<template>
  <div>
    <!-- 头部区域 -->
    <div style="height: 60px; line-height: 60px; background-color: #f8f8fb; display: flex">
      <div style="width: 300px; display: flex; align-items: center;">
        <a href="https://git.acwing.com/Magicherry" target="_blank" title="关于作者">
          <img src="@/assets/logo2.svg" style="width: 40px; position: relative; top: 10px; left: 20px;">
        </a>
        <el-button type="text" style="margin-left: 25px; font-weight: bold; font-size: 24px; color: #27282D;" @click="$router.push('/')">图书借阅管理系统</el-button>
        <span style="font-size: 14px; color: #999999; font-weight: 300; margin-left: 10px; margin-top: 10px;">Insider</span>
      </div>

      <div style="flex: 1; text-align: right; padding-right: 20px;">
        <el-dropdown size="medium">
          <span class="el-dropdown-link" style="cursor: pointer; font-family: PingFang SC">
            <i class="el-icon-user"></i> {{ admin.username }} <i class="el-icon-arrow-down el-icon--right"></i>
          </span>
          <el-dropdown-menu slot="dropdown" style="margin-top: -5px; border-radius: 7px !important;">
            <el-dropdown-item>
              <div style="width: 80px; text-align: center;" @click="logout"><i class='el-icon-arrow-left'></i>退出账户</div>
            </el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
      </div>
    </div>

    <!-- 侧边栏和主体 -->
    <el-container style="display: flex; background-color: #f8f8fb; border: 1px">
      <!-- 侧边栏导航 -->
      <el-aside :style="{ width: auto, minHeight: 'calc(100vh - 62px)', overflow: 'hidden', borderRight: 'none' }">
        <div class="spacer" :style="{ height: '40px', width: isCollapse ? '60px' : '200px' }">
          <el-button title="收缩状态栏"
          :icon="isCollapse ? 'el-icon-s-unfold' : 'el-icon-s-fold'"
          width="50px"
          height="20px"
          plain="true"
          style="position: absolute; left: 7px; background-color: #f8f8fb; border: none; font-size: 20px; "
          @click="toggleCollapse">
        </el-button>
        </div>

          <el-menu :default-active="$route.path" router class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose" :collapse="isCollapse" :style="{ marginBottom: '10px', backgroundColor: '#f8f8fb' }">

            <el-menu-item index="/">
            <i class="el-icon-data-line"></i>
            <span>首页统计</span>
          </el-menu-item>

          <el-submenu index="user" class="rounded-submenu">
            <template slot="title">
              <i class="el-icon-s-custom"></i>
              <span>会员管理</span>
            </template>
            <el-menu-item index="/addUser" ><i class="el-icon-plus"></i><span>会员添加</span></el-menu-item>
            <el-menu-item index="/userList"><i class='el-icon-tickets'></i><span>会员列表</span></el-menu-item>
          </el-submenu>

          <el-submenu index="admin">
            <template slot="title">
              <i class="el-icon-user"></i>
              <span>管理员管理</span>
            </template>
            <el-menu-item index="/addAdmin"><i class="el-icon-plus"></i><span>管理员添加</span></el-menu-item>
            <el-menu-item index="/adminList"><i class='el-icon-tickets'></i><span>管理员列表</span></el-menu-item>
          </el-submenu>

          <el-submenu index="book">
            <template slot="title">
              <i class="el-icon-notebook-1"></i>
              <span>图书管理</span>
            </template>
            <el-menu-item index="/addBook"><i class="el-icon-plus"></i><span>图书添加</span></el-menu-item>
            <el-menu-item index="/bookList"><i class='el-icon-tickets'></i><span>图书列表</span></el-menu-item>
          </el-submenu>
          
          <el-submenu index="category">
            <template slot="title">
              <i class="el-icon-s-operation"></i>
              <span>图书分类管理</span>
            </template>
            <el-menu-item index="/addCategory"><i class="el-icon-plus"></i><span>图书分类添加</span></el-menu-item>
            <el-menu-item index="/categoryList"><i class='el-icon-tickets'></i><span>图书分类列表</span></el-menu-item>
          </el-submenu>

          <el-submenu index="borrow">
            <template slot="title">
              <i class="el-icon-upload2"></i>
              <span>借书管理</span>
            </template>
            <el-menu-item index="/addBorrow"><i class="el-icon-plus"></i><span>借书添加</span></el-menu-item>
            <el-menu-item index="/borrowList"><i class='el-icon-tickets'></i><span>借书列表</span></el-menu-item>
          </el-submenu>

          <el-submenu index="retur">
            <template slot="title">
              <i class="el-icon-download"></i>
              <span>还书管理</span>
            </template>
            <el-menu-item index="/returList"><i class='el-icon-tickets'></i><span>还书列表</span></el-menu-item>
          </el-submenu>
          
        </el-menu>
      </el-aside>

      <!-- 主体数据 -->
      <div class="mainbody" :class="{'mainbody--collapsed': isCollapse, 'mainbody--expanded': !isCollapse}">
        <router-view />
      </div>
    </el-container>
  </div>
</template>

<script>
import Cookies from 'js-cookie'

export default {
  name: "Layout.vue",
  data() {
    return {
      admin: Cookies.get('admin') ? JSON.parse(Cookies.get('admin')) : {},
      isCollapse: true
    }
  },
  methods: {
    logout() {
      Cookies.remove('admin')
      this.$router.push('/login')
    },
    toggleCollapse() {
      this.isCollapse = !this.isCollapse
    },
    handleOpen(key, keyPath) {
      console.log(key, keyPath)
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath)
    }
  }
}
</script>

<style scoped>
.el-menu-vertical-demo:not(.el-menu--collapse) {
  width: 200px;
  min-height: 400px;
}

.spacer {
  background-color: #f8f8fb;
  transition: all 0.3s;
}

.mainbody {
  flex: 1;
  background-color: white;
  padding: 15px;
  border-radius: 10px 0 0 0;
  border-left: 1.5px solid #eae2e2;
  border-top: 1.5px solid #eae2e2;
  overflow: auto;
}

.mainbody--collapsed {
  width: calc(100% - 60px);
}

.mainbody--expanded {
  width: calc(100% - 200px);
}

.rounded-submenu .el-submenu__popover {
  border-radius: 5px !important; /* 调整圆角的大小 */
}

</style>
