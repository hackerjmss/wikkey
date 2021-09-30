import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'EditPayBankC.dart';

class EditPayBank extends GetView<EditPayBankController> {
  EditPayBankController payAliPay = Get.put(EditPayBankController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "修改银行卡",
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
                  child: Text("添加银行卡账户".tr,
                      style: TextStyle(
                          fontSize: 48.sp,
                          color: Color(0xff2C3240),
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 40.h, bottom: 80.h, left: 24.w, right: 24.w),
                  alignment: Alignment.center,
                  child: Text("请绑定本人银行卡账户".tr,
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
                          '卡号',
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
                              hintText: '请输入卡号',
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
                          '开户行',
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
                              hintText: '请输入开户行',
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
                          '银行名称',
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
                              hintText: '银行名称',
                              hintStyle: TextStyle(color: Color(0xffB1B8C8),fontSize: 32.sp)),
                          onChanged: null,
                          autofocus: false,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                          margin: EdgeInsets.only(left: 77.w,right: 77.w,top: 77.h),
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
