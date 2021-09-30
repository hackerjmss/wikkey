import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';

import 'UpdateBankC.dart';

class UpdateBank extends GetView<UpdateBankController> {
  UpdateBankController updateBank = Get.put(UpdateBankController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "银行卡",
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
              margin: EdgeInsets.only(top: 18.h),
              padding: EdgeInsets.only(left: 30.w, bottom: 53.h),
              alignment: Alignment.center,
              width: 702.w,
              decoration: new BoxDecoration(
                color: Color(0xffE04854),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50.0)),
                              ),
                              child: Image.asset(
                                'static/images/zs.png',
                                height: 47.h,
                                width: 47.w,
                              )),
                          SizedBox(
                            width: 18.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("招商银行",
                                  style: TextStyle(
                                      fontSize: 28.sp, color: Colors.white)),
                              Text(
                                "储蓄卡".tr,
                                style: TextStyle(
                                    fontSize: 24.sp, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'static/images/banks.png',
                        height: 192.h,
                        width: 136.w,
                      )
                    ],
                  ),
                  Text(
                    "**** **** **** 6712",
                    style: TextStyle(fontSize: 48.sp, color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 77.w, right: 77.w,top: 77.h),
              height: 88.h,
              width: Get.width,
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
                  onPressed: () => Get.toNamed(Routes.EditAddBank),
                  child: Text(
                    '更换银行卡',
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
