import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';

import 'PayC.dart';

class Ply extends GetView<PayController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "支付管理",
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
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                InkWell(
                    onTap: () => Get.toNamed(Routes.UPDATEALIPAY),
                    child: Container(
                      padding: EdgeInsets.only(right: 24.w),
                      color: Colors.white,
                      height: 88.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 22.w,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "支付宝".tr,
                                style: TextStyle(
                                    fontSize: 32.sp, color: Color(0xff4B5166)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "去绑定".tr,
                                style: TextStyle(
                                    color: Color(0xffFF5B0B), fontSize: 28.sp),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Image.asset(
                                'static/images/my7.png',
                                height: 22.h,
                                width: 12.w,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 18.h,
                ),
                InkWell(
                    onTap: () => Get.toNamed(Routes.UPDATEWECHAT),
                    child: Container(
                      padding: EdgeInsets.only(right: 24.w),
                      color: Colors.white,
                      height: 88.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 22.w,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "微信".tr,
                                style: TextStyle(
                                    fontSize: 32.sp, color: Color(0xff4B5166)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "去绑定".tr,
                                style: TextStyle(
                                    color: Color(0xffFF5B0B), fontSize: 28.sp),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Image.asset(
                                'static/images/my7.png',
                                height: 22.h,
                                width: 12.w,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 18.h,
                ),
                InkWell(
                    onTap: () => Get.toNamed(Routes.UPDATEBANK),
                    child: Container(
                      padding: EdgeInsets.only(right: 24.w),
                      color: Colors.white,
                      height: 88.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 22.w,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                "银行卡".tr,
                                style: TextStyle(
                                    fontSize: 32.sp, color: Color(0xff4B5166)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "去绑定".tr,
                                style: TextStyle(
                                    color: Color(0xffFF5B0B), fontSize: 28.sp),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Image.asset(
                                'static/images/my7.png',
                                height: 22.h,
                                width: 12.w,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
