import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/MyPage/MyC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';

class MyPage extends GetView<MyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffFC6821),
                  Color(0xffFF863D),
                ],
              ),
            ),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500.h,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      height: 390.h,
                      padding: EdgeInsets.only(left: 24.w, right: 24.w),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffFC6821),
                            Color(0xffFF863D),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'static/images/index9.png',
                                width: 120.w,
                                height: 120.h,
                              ),
                              SizedBox(
                                width: 23.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "米帮",
                                    style: TextStyle(
                                        fontSize: 36.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 24.5.h,
                                  ),
                                  Text(
                                    "18773921572",
                                    style: TextStyle(
                                        fontSize: 28.sp, color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "26.33",
                                    style: TextStyle(
                                        fontSize: 36.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "账户余额",
                                    style: TextStyle(
                                        fontSize: 24.sp, color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "26.33",
                                    style: TextStyle(
                                        fontSize: 36.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "保证金",
                                    style: TextStyle(
                                        fontSize: 24.sp, color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "26.33",
                                    style: TextStyle(
                                        fontSize: 36.sp, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "累计提现",
                                    style: TextStyle(
                                        fontSize: 24.sp, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                    Positioned(
                        top: 280.h,
                        child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            //设置四周圆角 角度
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp)),
                          ),
                          margin: EdgeInsets.only(left: 24.w, right: 24.w),
                          padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
                          width: Get.width - 48.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'static/images/index4.png',
                                          height: 80.h,
                                          width: 80.w,
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Text(
                                          "我的接单",
                                          style: TextStyle(
                                              fontSize: 24.sp,
                                              color: Color(0xff2C3240)),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () => Get.toNamed(Routes.MyTask)),
                              InkWell(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'static/images/index5.png',
                                          height: 80.h,
                                          width: 80.w,
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Text(
                                          "我的派单",
                                          style: TextStyle(
                                              fontSize: 24.sp,
                                              color: Color(0xff2C3240)),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () => Get.toNamed(Routes.Merchant)),
                              InkWell(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'static/images/index9.png',
                                          height: 80.h,
                                          width: 80.w,
                                        ),
                                        SizedBox(
                                          height: 18.h,
                                        ),
                                        Text(
                                          "商家认证",
                                          style: TextStyle(
                                              fontSize: 24.sp,
                                              color: Color(0xff2C3240)),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () => null),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.h, bottom: 8.h),
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 88.h,
                      width: 339.w,
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
                            '充值',
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
                      width: 24.w,
                    ),
                    Container(
                      height: 88.h,
                      width: 339.w,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(44.0.sp)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff6798FC),
                            Color(0xff3D7CF7),
                          ],
                        ),
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '提现',
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
              Container(
                margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 18.h, bottom: 18.h),
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                decoration: new BoxDecoration(
                  color: Colors.white,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => null,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my1.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("邀请好友".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my2.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("我的收藏".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.Pay),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my3.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("支付管理".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my4.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("实名认证".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my5.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("安全中心".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.h, color: Color(0xffE6E9F0)))),
                        height: 96.h,
                        padding: EdgeInsets.only(top: 30.h,bottom: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'static/images/my6.png',
                                  height: 36.h,
                                  width: 36.w,
                                ),
                                SizedBox(
                                  width: 19.5.w,
                                ),
                                Text("帮助中心".tr,
                                    style: TextStyle(fontSize: 32.sp))
                              ],
                            ),
                            Image.asset(
                              'static/images/my7.png',
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
