# MotoAddons-Magisk
一个将Moto内置软件刷入类原生系统的Magisk模块。  
A Magisk module that flash MyUI built-in apps into your system.

# 它的功能

## 安装以下软件至 (`/system/priv-app`):  
通讯录 12.2.0.0.0030 (`com.android.contacts`)  
电话 13.1.0.0.069 (`com.android.dialer`)  
短信 13.1.0.0.030r (`com.android.messaging`)  
时钟 06.0.6.43.0 (`com.android.deskclock`)  

## 安装以下软件至 (`/system/app`):
日历 06.0.5.83.0 (`com.motorola.cn.calendar`)  
相册 3.0.22.54 (`com.motorola.cn.gallery`)  
录音机 01.03.0823 (`com.motorola.audiorecorder`)  
计算器 06.0.1.24.0 (`com.motorola.cn.calculator`)  
指南针 06.0.0.27.0 (`com.motorola.cn.compass`)  
便签 30.01.23 (`com.motorola.stylus`)  
微件 4.09.11 (`com.motorola.timeweatherwidget`)  

## 精简以下系统软件:
日历：(`/system/product/app/Etar`)  
录音机：(`/system/product/app/Recorder`)  
相机：(`/system/product/app/Aperture`)  
音乐：(`/system/product/priv-app/Eleven`)  
浏览器：(`/system/product/app/Jelly`)  
相册：(`/system/product/app/Gallery2`)  
计算器：(`/system/product/app/ExactCalculator`)  

# 详细使用和修改说明
见[安装脚本](install.sh)

# 注意！
若想尝试时钟、短信能否使用，请查看full分支，此分支不含这两个软件，容易闪退。