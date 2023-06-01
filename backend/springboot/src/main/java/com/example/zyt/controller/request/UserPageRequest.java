package com.example.zyt.controller.request;

import lombok.Data;

@Data
public class UserPageRequest extends BaseRequest{
    private String name;
    private String phone;
}
