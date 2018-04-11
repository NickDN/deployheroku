package ru.myproject.dyakins.servlets;

import ru.myproject.dyakins.account.Account;
import ru.myproject.dyakins.service.AccountService;
import ru.myproject.dyakins.service.AccountServiceImpl;
import ru.myproject.dyakins.util.exception.NotFoundException;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AccountService service = new AccountServiceImpl();
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        boolean remember = Boolean.parseBoolean(req.getParameter("remember"));
        if (remember) {
            req.setAttribute("remember", "checked");
        }
        String errMsg;
        if (email.isEmpty()|| password.isEmpty()) {
            errMsg = "Email or Password field is empty";
            req.setAttribute("errMsg", errMsg);
            req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
        } else {
            try {
                Account account = service.get(email);
                //todo зашифровать пароли
                if (!account.getPassword().equals(password)){
                    throw new NotFoundException("Username/password does not match");
                }
                HttpSession session = req.getSession();
                session.setAttribute("loginAccount", account);
                if (remember) {
                    storeCookies(resp, account);
                } else {
                    deleteCookies(resp);
                }
                resp.sendRedirect(req.getContextPath() + "/account");
            } catch (NotFoundException e) {
                errMsg = "Username/password does not match";
                req.setAttribute("errMsg", errMsg);
                req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
            }
        }
    }

    private void storeCookies(HttpServletResponse response, Account account) {
        Cookie cookieEmail = new Cookie("emailCookie", account.getEmail());
        cookieEmail.setMaxAge(24 * 60 * 60);
        response.addCookie(cookieEmail);
        Cookie cookiePassword = new Cookie("passwordCookie", account.getPassword());
        cookiePassword.setMaxAge(24 * 60 * 60);
        response.addCookie(cookiePassword);
    }

    private void deleteCookies(HttpServletResponse response) {
        Cookie cookieEmail = new Cookie("emailCookie", null);
        cookieEmail.setMaxAge(0);
        Cookie cookiePassword = new Cookie("passwordCookie", null);
        cookiePassword.setMaxAge(0);
        response.addCookie(cookieEmail);
        response.addCookie(cookiePassword);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = "";
        String password = "";
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("emailCookie")) {
                    email = cookie.getValue();
                } else if (cookie.getName().equals("passwordCookie")) {
                    password = cookie.getValue();
                }
            }
        }
        req.setAttribute("email", email);
        req.setAttribute("password", password);
        req.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(req, resp);
    }
}