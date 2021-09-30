import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Pages/IndexPage/MyTaskPage/MyTaskPageC.dart';
import 'package:witkey/Widget/Ing.dart';
import 'package:witkey/Widget/TabBar.dart';
import 'package:badges/badges.dart';

class MyTaskPage extends GetView<MyTaskController> {
  MyTaskController myTask = Get.put(MyTaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "我的任务",
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
                Text("全部"),
                Badge(
                  badgeContent: Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  child: Text("待提交"),
                ),
                Text("审核中"),
                Text("待申诉"),
              ], myTask.tabController, Alignment.center),
            ),
            Expanded(
                child: TabBarView(controller: myTask.tabController, children: [
              Obx(
                () => myTask.listView.length == 0
                    ? ing()
                    : GridView.builder(
                        /// 监听滚动的状态，
                        controller: myTask.scrollController,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          // 设置每子元素的大小（宽高比）
                          childAspectRatio: 2.3,
                        ),
                        itemBuilder: (context, index) {
                          if (index == myTask.listView.length) {
                            /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                            return Center(
                                child: Text(
                              "${myTask.botText.value}".tr,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp)),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "订单编号:${myTask.listView[index]['id']}",
                                            style: TextStyle(
                                                fontSize: 24.sp,
                                                color: Color(0xff646C7F)),
                                          ),
                                          SizedBox(
                                            width: 32.w,
                                          ),
                                          Text(
                                            "复制",
                                            style: TextStyle(
                                                fontSize: 24.sp,
                                                color: Color(0xffFF5B0B)),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        myTask.typeState(
                                            '${myTask.listView[index]['type']}'),
                                        style: TextStyle(
                                            fontSize: 28.sp,
                                            color: myTask.typeStateColor(
                                                '${myTask.listView[index]['type']}')),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${myTask.listView[index]['title']}",
                                        style: TextStyle(
                                            fontSize: 32.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff171717)),
                                      ),
                                      myTask.typeStateWidget(
                                          '${myTask.listView[index]['type']}',
                                          '${myTask.listView[index]['gotime']}',
                                          '${myTask.listView[index]['enTime']}')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${myTask.listView[index]['money']}",
                                            style: TextStyle(
                                                fontSize: 48.sp,
                                                color: Color(0xffFC6821)),
                                          ),
                                          Text(
                                            "元/次",
                                            style: TextStyle(
                                                fontSize: 24.sp,
                                                color: Color(0xffFC6821)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "${myTask.listView[index]['taskType']} | ",
                                            style: TextStyle(
                                              fontSize: 24.sp,
                                              color: myTask.typeContext(
                                                  '${myTask.listView[index]['taskType']}'),
                                            ),
                                          ),
                                          Text(
                                            "已付${myTask.listView[index]['wase']}工资 | ",
                                            style: TextStyle(
                                              fontSize: 24.sp,
                                              color: Color(0xff646C7F),
                                            ),
                                          ),
                                          Text(
                                            "${myTask.listView[index]['ynTime']}分钟完成",
                                            style: TextStyle(
                                              fontSize: 24.sp,
                                              color: Color(0xff646C7F),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }
                        },
                        itemCount: myTask.listView.length + 1,
                      ),
              ),
              ing(),
              ing(),
              ing(),
            ]))
          ],
        )));
  }
}
