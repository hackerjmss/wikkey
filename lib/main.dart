import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/IndexPage/Index.dart';
import 'package:witkey/Routers/AppPages.dart';
import 'package:witkey/Routers/Routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(
    ScreenUtilInit(
      designSize: Size(750, 1624),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRight,
        initialRoute: Routes.Splash,
        getPages: AppPages.pages,
        home: IndexPage(),
        builder: EasyLoading.init(),
      ),
    ),
  );
}