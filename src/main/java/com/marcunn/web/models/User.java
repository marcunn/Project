package com.marcunn.web.models;

/**
 * Created by Marcin Surowiec (lookatmycode@outlook.com)
 * Project: MyBlogWebapp
 * Date: 2014-10-29
 */
public class User {

    private int id;
    private String nickname;
    private String password;
    private int age;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
