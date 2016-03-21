package com.drawer.filter;

import com.drawer.bean.User;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by s-aissaoui on 21/03/2016.
 */
public class UserCheckFilter implements Filter{
    private String LOGIN_ACTION_URI;

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        LOGIN_ACTION_URI = fConfig.getInitParameter("loginActionURI");
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null && !LOGIN_ACTION_URI.equals(req.getRequestURI())){
            RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
            return;
        }

        chain.doFilter(request, response);
    }
}
