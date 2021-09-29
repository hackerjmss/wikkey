import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:witkey/Routers/Routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final ingint = 10.obs;
  Timer? timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // appUpdate();
    timer = Timer.periodic(Duration(seconds: 1), (Timer _timer) {
      --ingint.value;
      if (ingint.value < 1) {
        _timer.cancel();
        Get.toNamed(Routes.Home);
      }
    });
  }

  Future<bool> _onWillPop() {
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: new AssetImage('static/images/ing.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 100.h,right: 30.w),
                  width: 120.w,
                  decoration: new BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  padding: EdgeInsets.all(16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Obx(() => Text("${ingint.value}")),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: (){
                          Get.toNamed(Routes.Home);
                          timer!.cancel();
                        },
                        child: Text(
                          "跳过",
                          style: TextStyle(fontSize: 24.sp, color: Colors.orange),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'static/images/ing1.png',
                    width: 430.w,
                    height: 475.h,
                  ),
                ),
                SizedBox(
                  height: 632.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'static/images/ing2.png',
                    width: 218.w,
                    height: 149.h,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
