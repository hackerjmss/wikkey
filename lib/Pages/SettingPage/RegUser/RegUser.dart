import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/SettingPage/RegUser/RegUserC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegUserPage extends GetView<RegUserController> {
  RegUserController regUser = Get.put(RegUserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "用户注册",
            style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
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
                  margin: EdgeInsets.only(top: 96.5.h, bottom: 50.h),
                  height: 205.h,
                  width: 205.w,
                  child: Image.asset('static/images/ing1.png'),
                ),
              ),

              // Container(
              //   margin: EdgeInsets.only(top: 50.h, right: 75.w, left: 75.w),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       "手机号码".tr,
              //       style: TextStyle(
              //           fontSize: 32.sp,
              //           color: Color(0xff646C7F),
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 15.h, right: 75.w, left: 75.w),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffE6E9F0)))),
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: regUser.tel,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入手机号码'.tr,
                            hintStyle: TextStyle(
                                color: Color(0xffB1B8C8), fontSize: 32.sp)),
                        // onChanged: onChanged,
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.h, right: 75.w, left: 75.w),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffE6E9F0)))),
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: regUser.tel,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入验证码'.tr,
                            hintStyle: TextStyle(
                                color: Color(0xffB1B8C8), fontSize: 32.sp)),
                        // onChanged: onChanged,
                        autofocus: false,
                      ),
                    ),
                    Container(
                      height: 60.h,
                      width: 80.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(44.0.sp)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFC6821),
                            Color(0xffFF863D),
                          ],
                        ),
                      ),
                      child: Text('发送'.tr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.sp)), //背景颜色//背景颜色
                    )
                  ],
                ),
              ),

              ///登录密码
              // Container(
              //   margin: EdgeInsets.only(top: 50.h, right: 75.w, left: 75.w),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       "登录密码".tr,
              //       style: TextStyle(
              //           fontSize: 32.sp,
              //           color: Color(0xff646C7F),
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 15.h, right: 75.w, left: 75.w),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffE6E9F0)))),
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: regUser.tel,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '输入新密码'.tr,
                            hintStyle: TextStyle(
                                color: Color(0xffB1B8C8), fontSize: 32.sp)),
                        // onChanged: onChanged,
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.h, right: 75.w, left: 75.w),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffE6E9F0)))),
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: regUser.tel,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '确认新密码'.tr,
                            hintStyle: TextStyle(
                                color: Color(0xffB1B8C8), fontSize: 32.sp)),
                        // onChanged: onChanged,
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   margin: EdgeInsets.only(top: 50.h, right: 75.w, left: 75.w),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text(
              //       "邀请码".tr,
              //       style: TextStyle(
              //           fontSize: 32.sp,
              //           color: Color(0xff646C7F),
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsets.only(top: 15.h, right: 75.w, left: 75.w),
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffE6E9F0)))),
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: regUser.tel,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入邀请码（选填）'.tr,
                            hintStyle: TextStyle(
                                color: Color(0xffB1B8C8), fontSize: 32.sp)),
                        // onChanged: onChanged,
                        autofocus: false,
                      ),
                    ),
                  ],
                ),
              ),

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
                      '注册',
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
                height: 100.h,
              )
            ],
          ),
        )));
  }
}
