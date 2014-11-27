package com.marcunn.web.Dtos;

/**
 * Created by Marcin Surowiec (lookatmycode@outlook.com)
 * Project: MyBlogWebapp
 * Date: 2014-10-29
 */
public class UserForm {
    private String nickname;
    private String password;

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
}
