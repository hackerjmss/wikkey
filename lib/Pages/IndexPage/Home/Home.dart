import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Pages/IndexPage/IndexPage/Index.dart';
import 'package:witkey/Pages/IndexPage/MyPage/My.dart';
import 'package:witkey/Pages/IndexPage/NewPage/NewPage.dart';
import 'package:witkey/Pages/IndexPage/TaskPage/Task.dart';

import 'HomeC.dart';

class Home extends GetView<HomeController> {
  // 导航页面
  final pages = [
    IndexPage(),
    TaskPage(),
    Text("123"),
    NewPage(),
    MyPage(),
  ];

  final HomeController homeCon = Get.put(HomeController());

  Future<bool> _onWillPop() {
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Obx(() => BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.blue,
                      icon: Image.asset(
                        'static/images/home1_off.png',
                        width: 42.w,
                        height: 42.h,
                      ),
                      label: "首页",
                      activeIcon: Image.asset(
                        'static/images/home1_on.png',
                        width: 42.w,
                        height: 42.h,
                      )),
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.green,
                      icon: Image.asset(
                        'static/images/home2_off.png',
                        width: 42.w,
                        height: 42.h,
                      ),
                      label: "任务",
                      activeIcon: Image.asset(
                        'static/images/home2_on.png',
                        width: 42.w,
                        height: 42.h,
                      )),
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.amber,
                      icon: Image.asset(
                        'static/images/home3_off.png',
                        width: 42.w,
                        height: 42.h,
                      ),
                      label: "发布",
                      activeIcon: Image.asset(
                        'static/images/home3_off.png',
                        width: 42.w,
                        height: 42.h,
                      )),
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.red,
                      icon: Image.asset(
                        'static/images/home4_off.png',
                        width: 42.w,
                        height: 42.h,
                      ),
                      label: "消息",
                      activeIcon: Image.asset(
                        'static/images/home4_on.png',
                        width: 42.w,
                        height: 42.h,
                      )),
                  BottomNavigationBarItem(
                      // backgroundColor: Colors.red,
                      icon: Image.asset(
                        'static/images/home5_off.png',
                        width: 42.w,
                        height: 42.h,
                      ),
                      label: "我的",
                      activeIcon: Image.asset(
                        'static/images/home5_on.png',
                        width: 42.w,
                        height: 42.h,
                      )),
                ],
                fixedColor: Color(0xffFF5B0B),
                selectedLabelStyle: TextStyle(fontSize: 22.sp),
                unselectedLabelStyle: TextStyle(fontSize: 22.sp),
                currentIndex: homeCon.currentIndex.value,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                onTap: (index) {
                  homeCon.changePage(index);
                },
              )),
          body: Obx(() => pages[homeCon.currentIndex.value])),
    );
  }
}
