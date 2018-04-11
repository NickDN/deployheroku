package ru.myproject.dyakins.service;

import ru.myproject.dyakins.account.Account;
import ru.myproject.dyakins.dao.AccountDAO;
import ru.myproject.dyakins.dao.AccountDAOImpl;

import java.util.List;

import static ru.myproject.dyakins.util.ValidationUtil.checkNotFoundWithEmail;
import static ru.myproject.dyakins.util.ValidationUtil.checkNotFoundWithId;

public class AccountServiceImpl implements AccountService {

    private AccountDAO accountDAO;

    public AccountServiceImpl() {
        this.accountDAO = new AccountDAOImpl();
    }

    @Override
    public Account get(int id) {
        return checkNotFoundWithId(accountDAO.get(id), id);
    }

    @Override
    public Account get(String email) {
        return checkNotFoundWithEmail(accountDAO.get(email), email);
    }

    @Override
    public List<Account> getAll() {
        return accountDAO.getAll();
    }

    @Override
    public void delete(int id) {
        checkNotFoundWithId(accountDAO.delete(id), id);
    }

    @Override
    public Account create(Account account) {
        return accountDAO.save(account);
    }

    @Override
    public void update(Account account) {
        checkNotFoundWithId(accountDAO.save(account), account.getId());
    }
}