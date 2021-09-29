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
                          color: Color(0xff4B5166),
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 40.h, bottom: 80.h, left: 24.w, right: 24.w),
                  alignment: Alignment.center,
                  child: Text("请绑定本人银行卡账户".tr,
                      style: TextStyle(
                          fontSize: 32.sp,
                          color: Color(0xff4B5166),
                          fontWeight: FontWeight.bold)),
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
                          style: TextStyle(color: Color(0xff4B5166),fontSize: 32.sp),
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
                              hintStyle: TextStyle(color: Color(0xffA3B0C2),fontSize: 32.sp)),
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
                          style: TextStyle(color: Color(0xff4B5166),fontSize: 32.sp),
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
                              hintStyle: TextStyle(color: Color(0xffA3B0C2),fontSize: 32.sp)),
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
                          style: TextStyle(color: Color(0xff4B5166),fontSize: 32.sp),
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
                              hintStyle: TextStyle(color: Color(0xffA3B0C2),fontSize: 32.sp)),
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
                          style: TextStyle(color: Color(0xff4B5166),fontSize: 32.sp),
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
                              hintStyle: TextStyle(color: Color(0xffA3B0C2),fontSize: 32.sp)),
                          onChanged: null,
                          autofocus: false,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 1200.w,
                  margin: EdgeInsets.only(right: 75.w, left: 75.w,top: 175.h),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "绑定".tr,
                        style: TextStyle(color: Colors.white),
                      ), //背景颜色
                      style: ButtonStyle(backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        //设置按下时的背景颜色
                        // if (states.contains(MaterialState.pressed)) {
                        //   return Colors.blue[200];
                        // }
                        //默认不使用背景颜色
                        return Color(0xffFF5B0B);
                      }))),
                ),
              ],
            ),
          ),
        ));
  }
}
