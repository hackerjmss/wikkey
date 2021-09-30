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
                          onPressed: () =>Get.toNamed(Routes.EditPayAliPay),
                          child: Text(
                            '更换支付宝账户',
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
    );
  }
}
