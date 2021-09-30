import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/TaskInfoPage/TaskInfoPageC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Widget/DottedLine.dart';

class TaskInfoPage extends GetView<TaskInfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f2f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "任务详情",
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                //设置四周圆角 角度
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
              ),
              margin: EdgeInsets.only(top: 18.h),
              padding: EdgeInsets.only(
                  top: 39.5.h, left: 24.w, right: 24.w, bottom: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "联想会员小程序",
                            style: TextStyle(
                                fontSize: 36.sp,
                                color: Color(0xff2C3240),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 17.5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "易通过",
                                style: TextStyle(
                                    fontSize: 24.sp, color: Color(0xff1DDAAB)),
                              ),
                              Text(
                                " I 每人一次 I 10-25号截止",
                                style: TextStyle(
                                    fontSize: 24.sp, color: Color(0xff646C7F)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "0.21",
                            style: TextStyle(
                                fontSize: 48.sp, color: Color(0xffFC6821)),
                          ),
                          Text(
                            "元",
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xffFC6821)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "88%",
                            style: TextStyle(
                                fontSize: 28.sp, color: Color(0xffFC6821)),
                          ),
                          SizedBox(
                            height: 19.5.h,
                          ),
                          Text(
                            "剩余任务",
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xff646C7F)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffFC6821)),
                              ),
                              Text(
                                "小时",
                                style: TextStyle(
                                    fontSize: 24.sp, color: Color(0xffFC6821)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 19.5.h,
                          ),
                          Text(
                            "限时完成",
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xff646C7F)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "24",
                                style: TextStyle(
                                    fontSize: 28.sp, color: Color(0xffFC6821)),
                              ),
                              Text(
                                "小时",
                                style: TextStyle(
                                    fontSize: 24.sp, color: Color(0xffFC6821)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 19.5.h,
                          ),
                          Text(
                            "限时审核",
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xff646C7F)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "5.0",
                            style: TextStyle(
                                fontSize: 28.sp, color: Color(0xffFC6821)),
                          ),
                          SizedBox(
                            height: 19.5.h,
                          ),
                          Text(
                            "任务评分",
                            style: TextStyle(
                                fontSize: 24.sp, color: Color(0xff646C7F)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Color(0xffF1F2F6),
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                    ),
                    margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 18.h),
                    padding: EdgeInsets.all(18.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'static/images/taskInfo1.png',
                              width: 36.w,
                              height: 36.w,
                            ),
                            SizedBox(
                              width: 13.5.w,
                            ),
                            Text(
                              "平台保障",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.sp,
                                  color: Color(0xff36B365)),
                            )
                          ],
                        ),
                        Text(
                          "已预付工资1500元，赚钱无忧",
                          style: TextStyle(
                              fontSize: 24.sp, color: Color(0xff36B365)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: Get.width,
              margin: EdgeInsets.only(top: 18.h),
              padding: EdgeInsets.only(
                  top: 39.5.h, left: 24.w, right: 24.w, bottom: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "做单说明",
                    style: TextStyle(
                        fontSize: 32.sp,
                        color: Color(0xff2C3240),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    "1.任务赏金已托管平台，赚钱有保障;",
                    style: TextStyle(fontSize: 28.sp, color: Color(0xff646C7F)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "2.请先领取任务再做任务，否则无赏金奖励;",
                    style: TextStyle(fontSize: 28.sp, color: Color(0xff646C7F)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "3.需要打钱，投资的任务请谨慎，否则后果自负;",
                    style: TextStyle(fontSize: 28.sp, color: Color(0xff646C7F)),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "4.发现同类平台任务单、拉人、线下交易者举报有奖;",
                    style: TextStyle(fontSize: 28.sp, color: Color(0xff646C7F)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: Get.width,
              margin: EdgeInsets.only(top: 18.h),
              padding: EdgeInsets.only(
                  top: 39.5.h, left: 24.w, right: 24.w, bottom: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "任务流程",
                    style: TextStyle(
                        fontSize: 32.sp,
                        color: Color(0xff2C3240),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 29.h,
                  ),
                  Text(
                    "仅限联想会员新用户做任务",
                    style: TextStyle(fontSize: 28.sp, color: Color(0xff646C7F)),
                  ),
                  getItem(),
                  getItems(),
                ],
              ),
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 38.h),
        color: Colors.white,
        child: Container(
          height: 88.h,
          width: 339.w,
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
                '领取任务',
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
      ),
    );
  }

  Widget getItem() {
    return Container(
      height: 400.h,
      child: Row(
        children: [
          Container(
            height: 500.h,
            width: 20,
            child: leftItem(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 14),
            child: rightItem(),
          ),
        ],
      ),
    );
  }

  Widget leftItem() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.5, top: 17),
          child: DottedLine(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.8, top: 17),
          child: Container(
            width: 25.w,
            height: 25.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffB1B8C8), width: 1),
              //边框
              borderRadius: BorderRadius.all(
                //圆角
                Radius.circular(50.0.sp),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4, top: 18.3),
          child: Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffB1B8C8),
            ),
          ),
        ),
      ],
    );
  }

  Widget rightItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('第一步'),
        Text(
          '微信扫码-点击允许授权登录-包保留我的页面截图',
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        SizedBox(
          height: 24.w,
        ),
        Row(
          children: [
            Image.asset(
              'static/images/taskInfo2.png',
              width: 215.w,
              height: 215.h,
            ),
            SizedBox(
              width: 12.w,
            ),
            Image.asset(
              'static/images/taskInfo3.png',
              width: 215.w,
              height: 215.h,
            ),
          ],
        )
      ],
    );
  }

  ///第二步
  Widget getItems() {
    return Container(
      height: 400.h,
      child: Row(
        children: [
          Container(
            height: 500.h,
            width: 20,
            child: leftItems(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 14),
            child: rightItems(),
          ),
        ],
      ),
    );
  }

  Widget leftItems() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.8, top: 17),
          child: Container(
            width: 25.w,
            height: 25.w,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffB1B8C8), width: 1),
              //边框
              borderRadius: BorderRadius.all(
                //圆角
                Radius.circular(50.0.sp),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4, top: 18.3),
          child: Container(
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffB1B8C8),
            ),
          ),
        ),
      ],
    );
  }

  Widget rightItems() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('第二步'),
        Text(
          '提交：我的页面截图（敏感信息可以打码）',
          style: TextStyle(color: Colors.black54, fontSize: 12),
        ),
        SizedBox(
          height: 24.w,
        ),
        Row(
          children: [
            Image.asset(
              'static/images/taskInfo4.png',
              width: 215.w,
              height: 215.h,
            ),
          ],
        )
      ],
    );
  }
}
