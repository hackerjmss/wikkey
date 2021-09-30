import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/MerchantPage/MerchantPageC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';
import 'package:witkey/Widget/Ing.dart';
import 'package:witkey/Widget/TabBar.dart';

class MerchantPage extends GetView<MerchantPageController> {
  MerchantPageController task = Get.put(MerchantPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "商家中心",
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
            child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBarWidgetL([
                Text("待上架"),
                Text("展示中"),
                Text("已完成"),
                Text("已下架"),
              ], task.tabController),
            ),
            Expanded(
                child: TabBarView(controller: task.tabController, children: [
              guanzhu(),
              zhanshi(),
              wancheng(),
              xiajia(),
            ]))
          ],
        )));
  }

  Obx guanzhu() {
    return Obx(
      () => task.listView.length == 0
          ? ing()
          : GridView.builder(
              /// 监听滚动的状态，
              controller: task.scrollController,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // 设置每子元素的大小（宽高比）
                childAspectRatio: 1.7,
              ),
              itemBuilder: (context, index) {
                if (index == task.listView.length) {
                  /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                  return Center(
                      child: Text(
                    "${task.botText.value}".tr,
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: Color(0xff999999),
                    ),
                  ));
                } else {
                  return Container(
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.white,
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                    ),
                    margin: EdgeInsets.only(
                      top: 18.5.h,
                      right: 24.w,
                      left: 24.w,
                    ),
                    padding: EdgeInsets.only(
                      right: 24.w,
                      left: 24.w,
                      top: 40.h,
                      bottom: 40.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "订单编号:3541126",
                                  style: TextStyle(
                                      color: Color(0xff646C7F),
                                      fontSize: 24.sp),
                                ),
                                SizedBox(
                                  width: 32.w,
                                ),
                                Text(
                                  "复制",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
                                )
                              ],
                            ),
                            Text(
                              "待上架",
                              style: TextStyle(
                                  color: Color(0xff36B365), fontSize: 28.sp),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "联想会员小程序",
                                  style: TextStyle(
                                      color: Color(0xff2C3240),
                                      fontSize: 32.sp),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "易通过",
                                      style: TextStyle(
                                          color: Color(0xff1DDAAB),
                                          fontSize: 24.sp),
                                    ),
                                    Text(
                                      " | 保存于09.26",
                                      style: TextStyle(
                                          color: Color(0xff646C7F),
                                          fontSize: 24.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3620",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 36.sp),
                                ),
                                Text(
                                  "元",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text("0.31",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("单价/次",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("2800",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("完成数量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("3600",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("浏览量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("4000",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("保证金",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("待上架商品系统保存一周",
                                style: TextStyle(
                                    color: Color(0xff646C7F), fontSize: 24.sp)),
                            Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red, width: 1), //边框
                                borderRadius: BorderRadius.all(
                                  //圆角
                                  Radius.circular(20.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text("立即上架",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
              },
              itemCount: task.listView.length + 1,
            ),
    );
  }

  Obx zhanshi() {
    return Obx(
      () => task.listView.length == 0
          ? ing()
          : GridView.builder(
              /// 监听滚动的状态，
              controller: task.scrollController,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // 设置每子元素的大小（宽高比）
                childAspectRatio: 1.68,
              ),
              itemBuilder: (context, index) {
                if (index == task.listView.length) {
                  /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                  return Center(
                      child: Text(
                    "${task.botText.value}".tr,
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: Color(0xff999999),
                    ),
                  ));
                } else {
                  return Container(
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.white,
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                    ),
                    margin: EdgeInsets.only(
                      top: 18.5.h,
                      right: 24.w,
                      left: 24.w,
                    ),
                    padding: EdgeInsets.only(
                      right: 24.w,
                      left: 24.w,
                      top: 40.h,
                      bottom: 40.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "订单编号:3541126",
                                  style: TextStyle(
                                      color: Color(0xff646C7F),
                                      fontSize: 24.sp),
                                ),
                                SizedBox(
                                  width: 32.w,
                                ),
                                Text(
                                  "复制",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
                                )
                              ],
                            ),
                            Text(
                              "展示中",
                              style: TextStyle(
                                  color: Color(0xffFF5B0B), fontSize: 28.sp),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "联想会员小程序",
                                  style: TextStyle(
                                      color: Color(0xff2C3240),
                                      fontSize: 32.sp),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "易通过",
                                      style: TextStyle(
                                          color: Color(0xff1DDAAB),
                                          fontSize: 24.sp),
                                    ),
                                    Text(
                                      " | 保存于09.26",
                                      style: TextStyle(
                                          color: Color(0xff646C7F),
                                          fontSize: 24.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3620",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 36.sp),
                                ),
                                Text(
                                  "元",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
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
                                Text("0.31",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("单价/次",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("2800",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("完成数量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("3600",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("浏览量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("4000",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("保证金",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("剩余审核时间",
                                    style: TextStyle(
                                        color: Color(0xff646C7F), fontSize: 24.sp)),
                                        Text("06：24:36",
                                    style: TextStyle(
                                        color: Color(0xffFF5B0B), fontSize: 24.sp)),
                              ],
                            ),
                            Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red, width: 1), //边框
                                borderRadius: BorderRadius.all(
                                  //圆角
                                  Radius.circular(20.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text("审核+6",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
              },
              itemCount: task.listView.length + 1,
            ),
    );
  }

  Obx wancheng() {
    return Obx(
      () => task.listView.length == 0
          ? ing()
          : GridView.builder(
              /// 监听滚动的状态，
              controller: task.scrollController,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // 设置每子元素的大小（宽高比）
                childAspectRatio: 1.68,
              ),
              itemBuilder: (context, index) {
                if (index == task.listView.length) {
                  /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                  return Center(
                      child: Text(
                    "${task.botText.value}".tr,
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: Color(0xff999999),
                    ),
                  ));
                } else {
                  return Container(
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.white,
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                    ),
                    margin: EdgeInsets.only(
                      top: 18.5.h,
                      right: 24.w,
                      left: 24.w,
                    ),
                    padding: EdgeInsets.only(
                      right: 24.w,
                      left: 24.w,
                      top: 40.h,
                      bottom: 40.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "订单编号:3541126",
                                  style: TextStyle(
                                      color: Color(0xff646C7F),
                                      fontSize: 24.sp),
                                ),
                                SizedBox(
                                  width: 32.w,
                                ),
                                Text(
                                  "复制",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
                                )
                              ],
                            ),
                            Text(
                              "已完成",
                              style: TextStyle(
                                  color: Color(0xff2C3240), fontSize: 28.sp),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "联想会员小程序",
                                  style: TextStyle(
                                      color: Color(0xff2C3240),
                                      fontSize: 32.sp),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "易通过",
                                      style: TextStyle(
                                          color: Color(0xff1DDAAB),
                                          fontSize: 24.sp),
                                    ),
                                    Text(
                                      " | 保存于09.26",
                                      style: TextStyle(
                                          color: Color(0xff646C7F),
                                          fontSize: 24.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3620",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 36.sp),
                                ),
                                Text(
                                  "元",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
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
                                Text("0.31",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("单价/次",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("2800",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("完成数量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("3600",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("浏览量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("4000",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("保证金",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                
                              ],
                            ),
                            Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.red, width: 1), //边框
                                borderRadius: BorderRadius.all(
                                  //圆角
                                  Radius.circular(20.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text("重新上架",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
              },
              itemCount: task.listView.length + 1,
            ),
    );
  }

  Obx xiajia() {
    return Obx(
      () => task.listView.length == 0
          ? ing()
          : GridView.builder(
              /// 监听滚动的状态，
              controller: task.scrollController,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                // 设置每子元素的大小（宽高比）
                childAspectRatio: 1.68,
              ),
              itemBuilder: (context, index) {
                if (index == task.listView.length) {
                  /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                  return Center(
                      child: Text(
                    "${task.botText.value}".tr,
                    style: TextStyle(
                      fontSize: 23.sp,
                      color: Color(0xff999999),
                    ),
                  ));
                } else {
                  return Container(
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.white,
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                    ),
                    margin: EdgeInsets.only(
                      top: 18.5.h,
                      right: 24.w,
                      left: 24.w,
                    ),
                    padding: EdgeInsets.only(
                      right: 24.w,
                      left: 24.w,
                      top: 40.h,
                      bottom: 40.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "订单编号:3541126",
                                  style: TextStyle(
                                      color: Color(0xff646C7F),
                                      fontSize: 24.sp),
                                ),
                                SizedBox(
                                  width: 32.w,
                                ),
                                Text(
                                  "复制",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
                                )
                              ],
                            ),
                            Text(
                              "已下架",
                              style: TextStyle(
                                  color: Color(0xff646C7F), fontSize: 28.sp),
                            )
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "联想会员小程序",
                                  style: TextStyle(
                                      color: Color(0xff2C3240),
                                      fontSize: 32.sp),
                                ),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "易通过",
                                      style: TextStyle(
                                          color: Color(0xff1DDAAB),
                                          fontSize: 24.sp),
                                    ),
                                    Text(
                                      " | 保存于09.26",
                                      style: TextStyle(
                                          color: Color(0xff646C7F),
                                          fontSize: 24.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "3620",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 36.sp),
                                ),
                                Text(
                                  "元",
                                  style: TextStyle(
                                      color: Color(0xffFF5B0B),
                                      fontSize: 24.sp),
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
                                Text("0.31",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("单价/次",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("2800",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("完成数量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("3600",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("浏览量",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                            Column(
                              children: [
                                Text("4000",
                                    style: TextStyle(
                                        color: Color(0xff2C3240),
                                        fontSize: 28.sp)),
                                Text("保证金",
                                    style: TextStyle(
                                        color: Color(0xff646C7F),
                                        fontSize: 24.sp))
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("保证金将在2个工作日内退回",
                                    style: TextStyle(
                                        color: Color(0xff646C7F), fontSize: 24.sp)),
                              ],
                            ),
                            Container(
                              height: 60.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff646C7F), width: 1), //边框
                                borderRadius: BorderRadius.all(
                                  //圆角
                                  Radius.circular(20.0),
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text("重新上架",
                                  style: TextStyle(
                                      color: Color(0xff646C7F),
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }
              },
              itemCount: task.listView.length + 1,
            ),
    );
  }
}
