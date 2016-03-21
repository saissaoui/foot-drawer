package com.drawer.bean;

/**
 * Created by s-aissaoui on 21/03/2016.
 */
public class User {

    private String login;
    private String password;

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public User(String login, String password) {
        this.login = login;
        this.password = password;
    }
}
