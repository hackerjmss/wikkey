import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarWidgetL extends StatelessWidget {
  final List<Widget> widget;
  final TabController? tabController;
  final AlignmentGeometry? alignment;
  final bool islable;
  TabBarWidgetL(this.widget, this.tabController,[this.alignment = Alignment.centerLeft,this.islable = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: this.alignment,
      height: 84.h,
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.5, color: Color(0xffe5e5e5)))),
      child: TabBar(
          isScrollable: this.islable,
          controller: this.tabController,
          labelColor: Color(0xffFF5B0B),
          //未选中的状态
          unselectedLabelColor: Color(0xff646C7F),
          indicatorColor: Color(0xffFF5B0B),
          // indicator: const BoxDecoration(),
          labelPadding: EdgeInsets.all(20.h),
          labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 32.sp),
          unselectedLabelStyle:
              TextStyle(fontWeight: FontWeight.w100, fontSize: 28.sp),
          tabs: this.widget),
    );
  }
}
