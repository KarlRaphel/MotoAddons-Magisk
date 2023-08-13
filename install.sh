LATESTARTSERVICE=false
POSTFSDATA=false
PROPFILE=false
SKIPMOUNT=false
print_modname() {
 ui_print "*******************************"
 ui_print "        Moto本地化移植          "
 ui_print "   酷安/Github: @KarlRaphel     "
 ui_print "*******************************"
}
on_install() {
 ui_print "- 使用说明"
 ui_print "-- 如有不需要安装的软件，请删除压缩包/system目录下中对应的文件夹"
 ui_print "-- 如有不需要精简的软件，请删除install.sh最后的精简列表对应条目"
 ui_print "-- /system/app下的软件都可以从压缩包提取出来安装为非系统应用"
 ui_print ""
 ui_print "- 以下软件安装至/system/priv-app"
 ui_print "-- 通讯录 12.2.0.0.0030 com.android.contacts"
 ui_print "-- 电话 13.1.0.0.069 com.android.dialer"
 ui_print "-- 短信 13.1.0.0.030r com.android.messaging"
 ui_print "-- 时钟 06.0.6.43.0 com.android.deskclock"
 ui_print ""
 ui_print "- 以下软件安装至/system/app"
 ui_print "-- 日历 06.0.5.83.0 com.motorola.cn.calendar"
 ui_print "-- 相册 3.0.22.54 com.motorola.cn.gallery"
 ui_print "-- 录音机 01.03.0823 com.motorola.audiorecorder"
 ui_print "-- 计算器 06.0.1.24.0 com.motorola.cn.calculator"
 ui_print "-- 指南针 06.0.0.27.0 com.motorola.cn.compass"
 ui_print "-- 便签 30.01.23 com.motorola.stylus"
 ui_print "-- 微件 4.09.11 com.motorola.timeweatherwidget"
 ui_print ""
 ui_print "- 精简以下系统软件"
 ui_print "-- 日历：/system/product/app/Etar"
 ui_print "-- 录音机：/system/product/app/Recorder"
 ui_print "-- 相机：/system/product/app/Aperture"
 ui_print "-- 音乐：/system/product/priv-app/Eleven"
 ui_print "-- 浏览器：/system/product/app/Jelly"
 ui_print "-- 相册：/system/product/app/Gallery2"
 ui_print "-- 计算器：/system/product/app/ExactCalculator"
 ui_print "-- 电话：/system/product/prive-app/Dialer"
 ui_print "-- 通讯录：/system/product/prive-app/Contacts"
 ui_print "-- 短信：/system/product/app/messaging"
 ui_print "-- 时钟：/system/product/app/DeskClock"
 ui_print ""
 ui_print "- 正在释放文件"
 unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
 set_perm_recursive $MODPATH 0 0 0755 0644
#设置权限，基本不要去动
}
# 精简列表
REPLACE="/system/product/app/Etar
/system/product/app/Recorder
/system/product/app/Aperture
/system/product/priv-app/Eleven
/system/product/app/Jelly
/system/product/app/Gallery2
/system/product/app/ExactCalculator
/system/product/app/messaging
/system/product/app/DeskClock
/system/product/prive-app/Dialer
/system/product/prive-app/Contacts"