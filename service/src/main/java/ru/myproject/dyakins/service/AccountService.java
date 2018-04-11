package ru.myproject.dyakins.service;

import ru.myproject.dyakins.account.Account;

import java.util.List;

public interface AccountService {
    Account get(int id);

    Account get(String email);

    List<Account> getAll();

    void delete (int id);

    Account create (Account account);

    void update (Account account);
}