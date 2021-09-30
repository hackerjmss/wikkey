import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'EditPayWeChatPayC.dart';

class EditPayWeChatPay extends GetView<EditPayWeChatPayController> {
  EditPayWeChatPayController payAliPay = Get.put(EditPayWeChatPayController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "修改微信",
            style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black, //修改颜色
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus!.unfocus();
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 199.h),
                  alignment: Alignment.center,
                  child: Text("添加微信账户".tr,
                      style: TextStyle(
                          fontSize: 48.sp,
                          color: Color(0xff2C3240),
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 40.h, bottom: 80.h, left: 24.w, right: 24.w),
                  alignment: Alignment.center,
                  child: Text("请绑定本人微信账户".tr,
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: Color(0xff646C7F))),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Color(0xffDFE5ED)))),
                  margin: EdgeInsets.only(left: 77.w,right: 77.w),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '姓名',
                          style: TextStyle(color: Color(0xff2C3240),fontSize: 32.sp),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          // controller: textEdit,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 15.h),
                              hintText: '请输入姓名',
                              hintStyle: TextStyle(color: Color(0xffB1B8C8),fontSize: 32.sp)),
                          onChanged: null,
                          autofocus: false,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1, color: Color(0xffDFE5ED)))),
                  margin: EdgeInsets.only(left: 77.w,right: 77.w),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '账户',
                          style: TextStyle(color: Color(0xff2C3240),fontSize: 32.sp),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          // controller: textEdit,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20.h, horizontal: 15.h),
                              hintText: '请输入账户',
                              hintStyle: TextStyle(color: Color(0xffB1B8C8),fontSize: 32.sp)),
                          onChanged: null,
                          autofocus: false,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 77.w, right: 77.w,top: 24.h,bottom: 151.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 24.h),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 0.5, //宽度
                                    color: Color(0xffDFE5ED), //边框颜色
                                  ),
                                ),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "二维码".tr,
                                      style: TextStyle(
                                          fontSize: 32.sp,
                                          color: Color(0xff2C3240)),
                                    ),
                                    Container(
                                      //设置背景图片
                                      decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.all(
                                            new Radius.circular(5.0)),
                                        color: Color(0x30000000),
                                      ),
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          InkWell(
                                            onTap: () => null,
                                            child: Image.asset(
                                              'static/images/xj.png',
                                              height: 80.h,
                                              width: 90.w,
                                            ),
                                          ),
                                          Text(
                                            "点击上传二维码".tr,
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      height: 216.h,
                                      width: 342.w,
                                      padding: EdgeInsets.only(
                                          top: 30.h, bottom: 30.h),
                                    ),
                                  ])),
                        ])),

                        Container(
                          margin: EdgeInsets.only(left: 77.w,right: 77.w),
                      height: 88.h,
                      width: Get.width,
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
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '绑定',
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

                
              ],
            ),
          ),
        ));
  }
}
