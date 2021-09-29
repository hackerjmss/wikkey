import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Center ing() {
    return Center(
      child: 
        ///列表标题
        Column(
          children: [
            SizedBox(height: 275.h,),
            Image.asset('static/images/icon_empty_quanyi.png',height: 350.h,width: 350.w,),
            SizedBox(height: 50.h,),
            Text(
              "暂无信息",
              style: TextStyle(color: Color(0xff646C7F),fontSize: 32.sp,fontWeight: FontWeight.bold),
            ),
          ],
        ),
    );
  }