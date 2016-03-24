package com.drawer.servlet;

import com.drawer.bean.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by s-aissaoui on 21/03/2016.
 */
public class UserValidatorServlet extends HttpServlet {
    private static final Map<String, User> users = getUsers();

    /**
     * Creates valid users
     * <p/>
     * This User Map could be users returned from a database
     * or a simple select with the user.name
     *
     * @return a Map of valid users
     */
    private static Map<String, User> getUsers() {
        Map<String, User> users = new HashMap<String, User>();

        User userOne = new User("a-abid", "admin");

        users.put(userOne.getLogin(), userOne);

        return users;
    }

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        doPost(req, res);
    }

    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        RequestDispatcher rd;
        String name = req.getParameter("name");
        String password = req.getParameter("password");

        User user = validateLogin(name, password);

        if (user == null) {
            req.setAttribute("errorMessage","Login ou mot de passe invalides");
            rd = req.getRequestDispatcher("/login.jsp");
        } else {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            rd = req.getRequestDispatcher("/index.jsp");
        }

        rd.forward(req, res);
    }

    /**
     * Validate the entered data
     * <p/>
     * If there is no valid data, the method will return null
     *
     * @param name     given at the jsp
     * @param password given at the jsp
     * @return a user if one was found and validated
     */
    private User validateLogin(String name, String password) {
        // All parameters must be valid
        if (name == null || password == null) {
            return null;
        }

        // Get a user by key
        User user = users.get(name);

        if (user == null) {
            return null;
        }

        // Check if the password is valid
        if (!user.getPassword().equals(password.trim())) {
            return null;
        }

        return user;
    }
}