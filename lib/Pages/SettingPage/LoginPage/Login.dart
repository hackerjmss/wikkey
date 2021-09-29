import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/SettingPage/LoginPage/LoginC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';

class LoginPage extends GetView<LoginController> {
  LoginController logic = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black, //修改颜色
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 96.5.h, bottom: 131.h),
                  height: 205.h,
                  width: 205.w,
                  child: Image.asset('static/images/ing1.png'),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 75.w, right: 75.w),
                child: TextField(
                  controller: logic.phone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        ///设置边框四个角的弧度
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                        ///用来配置边框的样式
                        borderSide: BorderSide(
                          ///设置边框的颜色
                          color: Color(0XFFDAEAED),

                          ///设置边框的粗细
                          width: 0.0,
                        ),
                      ),
                      hintText: '请输入手机号'.tr,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE6E9F0)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFC6821)),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xffB1B8C8), fontSize: 32.sp)),
                  onChanged: null,
                  autofocus: false,
                ),
              ),
              // 密码输入框
              Container(
                padding: EdgeInsets.only(left: 75.w, right: 75.w,top: 20.h),
                child: TextField(
                  controller: logic.password,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        ///设置边框四个角的弧度
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                        ///用来配置边框的样式
                        borderSide: BorderSide(
                          ///设置边框的颜色
                          color: Color(0XFF302F4F),

                          ///设置边框的粗细
                          width: 0.0,
                        ),
                      ),
                      hintText: '请输入密码'.tr,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE6E9F0)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFC6821)),
                      ),
                      hintStyle:
                          TextStyle(color: Color(0xffB1B8C8), fontSize: 32.sp)),
                  onChanged: null,
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: 23.5.h,
              ),
              // 忘记密码
              InkWell(
                  highlightColor: Colors.transparent,
                  radius: 0.0,
                  onTap: () => Get.toNamed(Routes.ForgetPass),
                  child: Container(
                    margin: EdgeInsets.only(right: 75.w),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "忘记密码?".tr,
                      style:
                          TextStyle(color: Color(0xff2C3240), fontSize: 28.sp),
                    ),
                  )),
              // 登录按钮
              Container(
                margin: EdgeInsets.only(top: 85.h),
                height: 88.h,
                width: 600.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(44.0.sp)),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xffFC6821),
                      Color(0xffFF863D),
                    ],
                  ),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      '登录',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.bold),
                    ), //背景颜色
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(44.sp),
                          ),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 338.h,
              ),
              // 底部忘记密码
              Container(
                margin: EdgeInsets.only(left: 75.w),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "没有账户？".tr,
                    style: TextStyle(color: Color(0xff646C7F), fontSize: 32.sp),
                  ),
                  InkWell(
                  highlightColor: Colors.transparent,
                  radius: 0.0,
                    child: Text(
                      "立即注册".tr,
                      style:
                          TextStyle(color: Color(0xffFC6821), fontSize: 32.sp),
                    ),
                    onTap: () => Get.toNamed(Routes.RegUser),
                  )
                ]),
              ),
            ],
          ),
        )));
  }
}
