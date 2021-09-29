import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';

import 'UpdeteAliPayC.dart';

class UpdeteAliPay extends GetView<UpdeteAliPayController> {
  UpdeteAliPayController updateAliPay = Get.put(UpdeteAliPayController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "支付宝",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80.h),
              alignment: Alignment.center,
              child: Image.asset(
                'static/images/alipay.png',
                height: 180.h,
                width: 180.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40.h),
              alignment: Alignment.center,
              child: Text("已绑定支付宝账号".tr,
                  style: TextStyle(
                      color: Color(0xff4B5166),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.h, bottom: 80.h),
              alignment: Alignment.center,
              child: Text(
                "123123123123",
                style: TextStyle(
                    color: Color(0xff4B5166),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 24.w, right: 24.w),
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    height: 88.h,
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.EditPayAliPay);
                        },
                        child: Text(
                          "更换支付宝账户".tr,
                          style:
                              TextStyle(color: Colors.white, fontSize: 32.sp),
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
            )
          ],
        ),
      ),
    );
  }
}
