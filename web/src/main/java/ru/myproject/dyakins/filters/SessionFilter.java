package ru.myproject.dyakins.filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession(false);
        String loginURI = req.getContextPath() + "/login";
        String accountURI = req.getContextPath() + "/account";
        boolean loggedIn = session != null && session.getAttribute("loginAccount") != null;

        if (loggedIn || (req.getRequestURI().equals(loginURI) || req.getRequestURI().endsWith("/") || req.getRequestURI().endsWith("html") || req.getRequestURI().endsWith("css"))) {
            if (loggedIn && (req.getRequestURI().equals(loginURI))) {
                resp.sendRedirect(accountURI);
            } else {
                filterChain.doFilter(req, resp);
            }
        } else {
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }

    @Override
    public void destroy() {
    }
}