import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/TaskPage/TaskC.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Routers/Routes.dart';
import 'package:witkey/Widget/Ing.dart';
import 'package:witkey/Widget/TabBar.dart';

class TaskPage extends GetView<TaskController> {
  TaskController task = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "任务中心",
            style: TextStyle(
                fontSize: 36.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Container(
              color: Colors.white,
              child: TabBarWidgetL([
                Text("全部"),
                Text("下载注册"),
                Text("关注分享"),
                Text("问卷调查"),
                Text("极限挑战"),
              ], task.tabController,Alignment.center,true),
            ),
            Expanded(
                child: TabBarView(controller: task.tabController, children: [
              guanzhu(),
              guanzhu(),
              guanzhu(),
              guanzhu(),
              guanzhu(),
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
                childAspectRatio: 2.8,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${task.listView[index]['title']}",
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
                                  "${task.listView[index]['money']}",
                                  style: TextStyle(
                                      fontSize: 36.sp,
                                      color: Color(0xffFF5B0B),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "元/次",
                                  style: TextStyle(
                                      fontSize: 24.sp,
                                      color: Color(0xffFF5B0B),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${task.listView[index]['type']} | ",
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    color: task.typeContext(
                                        '${task.listView[index]['type']}'),
                                  ),
                                ),
                                Text(
                                  "已付${task.listView[index]['cash']}工资 | ",
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    color: Color(0xff646C7F),
                                  ),
                                ),
                                Text(
                                  "${task.listView[index]['time']}分钟完成",
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(35.0.sp)),
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
                              onPressed: () => Get.toNamed(Routes.TaskInfo),
                              child: Text(
                                '去赚钱',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25.sp),
                              ), //背景颜色
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
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
              itemCount: task.listView.length + 1,
            ),
    );
  }
}
