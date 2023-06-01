<template>
    <div id='building'>
      <div style="height: 100vh; overflow: hidden; position: relative">
          <div class="registerClass">
            <div style="margin: 30px; text-align: center; font-size: 25px; font-weight: bold; color: black">注册一个新账户</div>
            <el-form :model="form" :rules="rules" ref="ruleForm">

                <el-form-item label="用户名" prop="username">
                    <el-input v-model="form.username" placeholder="请输入用户名"></el-input>
                </el-form-item>
                <el-form-item label="联系方式" prop="phone" required=true>
                    <el-input v-model="form.phone" placeholder="请输入联系方式"></el-input>
                </el-form-item>
                <el-form-item label="密码" prop="password">
                    <el-input v-model="form.password" placeholder="请设置密码"></el-input>
                </el-form-item>
                <el-form-item label="邮箱" prop="email">
                    <el-input v-model="form.email" placeholder="请输入邮箱"></el-input>
                </el-form-item>
                

              <el-form-item style="text-align: center;">
                <el-button style="width: 100%;" size="medium" type="primary" @click="register">注册</el-button>
              </el-form-item>

              <div style="text-align: center; margin-top: 5px">
              <el-button size="medium" type="text" @click="backToLogin">< 返回登录界面</el-button>
            </div>

            </el-form>
            
          </div>
      </div>
    </div>
</template>


<script>
import request from "@/utils/request";
import Cookies from 'js-cookie'

export default {
  name: 'AddAdmin',
  data() {
    const checkPhone = (rule, value, callback) => {
      if (!/^[1][3,4,5,6,7,8,9][0-9]{9}$/.test(value)) {
        callback(new Error('请输入合法的手机号'));
      }
      callback()
    };
    return {
      form: {},
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur'},
          { min: 3, max: 10, message: '长度在3-10个字符', trigger: 'blur'}
        ],
        phone: [
          { validator: checkPhone, trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur'},
          { min: 3, max: 10, trigger: 'blur'}
        ]
      }
    }
  },
  methods: {
    backToLogin() {
      this.$router.push('/login');
    },
    register() {
      // 特殊token
      Cookies.set('admin', JSON.stringify({ token: "register" }));

      this.$refs['ruleForm'].validate((valid) => {
        if (valid) {
          request.post('/admin/save', this.form).then(res => {
            console.log(res);
            if (res.code === '200') {
              this.$notify.success('管理员注册成功');
              this.$refs['ruleForm'].resetFields();
              // // 存储令牌到Cookies
              // Cookies.set('admin', JSON.stringify({ token: res.token }));
              // Cookies.set("admin" , JSON.stringify(res.data))
              this.$router.push("/login");
            } else {
              this.$notify.error(res.msg)
            }
          })
        }
      })
    }
  }
}

</script>
