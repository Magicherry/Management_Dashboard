<template>
  <div style="text-align: center">
    <el-empty :image-size="300" description="404 未找到页面！" >
      <el-button type="primary" style="margin-top: 20px; font-size: 20px" @click="$router.push('/')">返回主页</el-button>
    </el-empty>
  </div>
</template>