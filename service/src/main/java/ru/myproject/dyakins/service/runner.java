package ru.myproject.dyakins.service;

import ru.myproject.dyakins.account.Account;
import ru.myproject.dyakins.dao.AccountDAOImpl;

public class runner {
    public static void main(String[] args) {
        AccountDAOImpl dao = new AccountDAOImpl();

        AccountService accountService = new AccountServiceImpl();
        Account account = accountService.get("is1@yandex.ru");
        System.out.println(account);
        /*Account account = new Account();
        account.setFirstName("Ivan");
        account.setSecondName("Ivanov");
        account.setDateOfBirth(LocalDate.of(2000, 8, 12));
        account.setEmail("Ivanov12000@mail.ru");*/

        //dao.delete(11);
        //System.out.println(dao.save(account));
        //  dao.closeConnection();

        // accountService.delete(2);
    }
}
