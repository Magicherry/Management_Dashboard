<template>
  <div id="building">
    <div style="height: 100vh; overflow: hidden; position: relative">
        <div class="loginClass">
          <div style="margin: 30px; text-align: center; font-size: 25px; font-weight: bold; color: black">欢迎使用图书借阅管理系统</div>
          <el-form :model="admin" :rules="rules" ref="loginForm">
            <el-form-item prop="username">
              <el-input placeholder="请输入账号" prefix-icon="el-icon-user" size="medium" v-model="admin.username"></el-input>
            </el-form-item>
            <el-form-item prop="password">
              <el-input placeholder="请输入密码" show-password prefix-icon="el-icon-lock" size="medium" v-model="admin.password"></el-input>
            </el-form-item>
            <el-form-item style="text-align: center;">
              <el-button style="width: 100%;" size="medium" type="primary" @click="login">登录</el-button>
            </el-form-item>
            <div style="text-align: center; margin-top: 10px">
              <el-button size="medium" type="text" @click="register">注册新账户 ></el-button>
            </div>
          </el-form>

          <div style="cursor: pointer; margin-top: 20px; font-size: 13px; text-align: center;">
            <el-link href="https://git.acwing.com/Magicherry" style="font-family: PingFang SC; color: #C1C4CB">@MAGICHERRY</el-link>
          </div>
          
        </div>
    </div>
  </div>
</template>

<script>
import request from "@/utils/request";
import Cookies from 'js-cookie'

export default {
  name: 'LOGIN',
  data() {
    return { 
      loginAdmin: {},
      admin: {},
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur'},
          { min: 3, max: 10, trigger: 'blur'}
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur'},
          { min: 3, max: 10, trigger: 'blur'}
        ]
      }
    }
  },

  methods: {    
    register() {
      this.$router.push('/register');
    },
    login() {
      this.$refs['loginForm'].validate((valid) => {
        if (valid) {
          request.post('/admin/login', this.admin).then(res => {
            if (res.code === '200') {
              this.$notify.success("登录成功")
              if (res.data != null) {
                 // 登录成功，将令牌存储到Cookies
                Cookies.set("admin" , JSON.stringify(res.data))
              }
              this.$router.push("/")
            } else {
              this.$notify.error(res.msg)
            }
          })
        }
      })
    },
  }
}
</script>