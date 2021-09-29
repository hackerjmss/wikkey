import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/IndexPage/IndexC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';
import 'package:witkey/Widget/Ing.dart';

class IndexPage extends GetView<IndexController> {
  IndexController indexC = Get.put(IndexController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "首页",
            style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white,
                      Color(0xfff1f2f6),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    /// 推广图片
                    InkWell(
                      onTap: () => Get.toNamed(Routes.Login),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: 18.h, bottom: 18.h, right: 24.w, left: 24.w),
                        child: Image.asset("static/images/index8.png"),
                      ),
                    ),

                    /// 菜单列表
                    Container(
                      decoration: new BoxDecoration(
                        //背景
                        color: Colors.white,
                        //设置四周圆角 角度
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                      ),
                      margin: EdgeInsets.only(right: 24.w, left: 24.w),
                      padding: EdgeInsets.only(top: 35.h),
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.4),
                        itemBuilder: (context, index) {
                          return InkWell(
                              child: Container(
                                child: Column(
                                  children: [
                                    Image.asset(
                                      indexC.menu[index]['images'],
                                      height: 80.h,
                                      width: 80.w,
                                    ),
                                    SizedBox(
                                      height: 18.h,
                                    ),
                                    Text(
                                      "${indexC.menu[index]['title']}".tr,
                                      style: TextStyle(
                                          fontSize: 24.sp,
                                          color: Color(0xff2C3240)),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () =>
                                  Get.toNamed(indexC.menu[index]['to']));
                        },
                      ),
                    ),
                  ],
                ),
              ),

              ///提现记录
              Container(
                height: 250.h,
                margin: EdgeInsets.only(top: 18.h),
                child: Stack(
                  children: [
                    Obx(() => Positioned(
                        left: indexC.widgetwidth.value.w,
                        right: indexC.widgetwidth.value.w,
                        top: 28.h,
                        child: Container(
                          decoration: new BoxDecoration(
                            //背景
                            color: Color(0x60F6762D),
                            //设置四周圆角 角度
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp)),
                          ),
                          height: 180.5.h,
                        ))),
                    Positioned(
                        left: 76.w,
                        right: 76.w,
                        top: 56.h,
                        child: Container(
                          decoration: new BoxDecoration(
                            //背景
                            color: Color(0x60F6762D),
                            //设置四周圆角 角度
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.sp)),
                          ),
                          height: 180.5.h,
                        )),
                    Positioned(
                      child: Container(
                        height: 180.5.h,
                        child: Obx(
                          () => Swiper(
                            autoplay: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  margin:
                                      EdgeInsets.only(left: 24.w, right: 24.w),
                                  decoration: new BoxDecoration(
                                    //背景
                                    color: Color(0xffF6762D),
                                    //设置四周圆角 角度
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.sp)),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 32.w,
                                      ),
                                      Image.asset(
                                        'static/images/index7.png',
                                        width: 80.w,
                                        height: 80.h,
                                      ),
                                      SizedBox(
                                        width: 52.w,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 40.h, bottom: 25.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${indexC.moneyList[index]['tel']} 提现了 ${indexC.moneyList[index]['money']} 元",
                                              style: TextStyle(
                                                  fontSize: 32.sp,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 18.h,
                                            ),
                                            Text(
                                              "${indexC.moneyList[index]['time']}",
                                              style: TextStyle(
                                                  fontSize: 28.sp,
                                                  color: Colors.white54),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ));
                            },
                            itemCount: indexC.moneyList.length,
                            pagination: null,
                            control: null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 4.w,
                          height: 30.h,
                          color: Color(0xffFC6C25),
                        ),
                        SizedBox(
                          width: 13.w,
                        ),
                        Text("推荐任务",
                            style: TextStyle(
                                fontSize: 32.sp,
                                color: Color(0xff2C3240),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Obx(
                      () => indexC.listView.length == 0
                          ? ing()
                          : GridView.builder(
                              /// 监听滚动的状态，
                              controller: indexC.scrollController,
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                // 设置每子元素的大小（宽高比）
                                childAspectRatio: 2.8,
                              ),
                              itemBuilder: (context, index) {
                                if (index == indexC.listView.length) {
                                  /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                                  return Center(
                                      child: Text(
                                    "${indexC.botText.value}".tr,
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.sp)),
                                    ),
                                    margin: EdgeInsets.only(
                                      top: 18.5.h,
                                      right: 24.w,
                                    ),
                                    padding: EdgeInsets.only(
                                      right: 24.w,
                                      left: 24.w,
                                      top: 40.h,
                                      bottom: 40.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${indexC.listView[index]['title']}",
                                              style: TextStyle(
                                                  fontSize: 32.sp,
                                                  color: Color(0xff171717),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 24.h,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${indexC.listView[index]['money']}",
                                                  style: TextStyle(
                                                      fontSize: 36.sp,
                                                      color: Color(0xffFF5B0B),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "元/次",
                                                  style: TextStyle(
                                                      fontSize: 24.sp,
                                                      color: Color(0xffFF5B0B),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 24.h,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "${indexC.listView[index]['type']} | ",
                                                  style: TextStyle(
                                                    fontSize: 24.sp,
                                                    color: indexC.typeContext(
                                                        '${indexC.listView[index]['type']}'),
                                                  ),
                                                ),
                                                Text(
                                                  "已付${indexC.listView[index]['cash']}工资 | ",
                                                  style: TextStyle(
                                                    fontSize: 24.sp,
                                                    color: Color(0xff646C7F),
                                                  ),
                                                ),
                                                Text(
                                                  "${indexC.listView[index]['time']}分钟完成",
                                                  style: TextStyle(
                                                    fontSize: 24.sp,
                                                    color: Color(0xff646C7F),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Container(
                                          height: 70.h,
                                          width: 160.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(35.0.sp)),
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
                                              onPressed: () =>
                                                  Get.toNamed(Routes.TaskInfo),
                                              child: Text(
                                                '去赚钱',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25.sp),
                                              ), //背景颜色
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.sp),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              },
                              itemCount: indexC.listView.length + 1,
                            ),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
