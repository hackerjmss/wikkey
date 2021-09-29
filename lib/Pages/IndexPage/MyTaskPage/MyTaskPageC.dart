import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTaskController extends GetxController
    with SingleGetTickerProviderMixin {
  TabController? tabController;
  final listView = [
    {
      'id': 3541226,

      ///订单编号
      'title': '联想会员小程序',

      ///订单标题
      'money': '0.31',

      ///订单价格
      'gotime': '03:26:03',
      'enTime': '2分45秒',

      ///剩余完成时间
      'type': '0',
      'taskType': '视频教程',
      'wase': '4000',
      'ynTime': 3
    },
    {
      'id': 3684226,

      ///订单编号
      'title': '王者荣耀教程观看',

      ///订单标题
      'money': '2.66',

      ///订单价格
      'gotime': '03:26:03',
      'enTime': '2分45秒',

      ///剩余完成时间
      'type': '1',
      'taskType': '高收益',
      'wase': '8000',
      'ynTime': 10
    },
    {
      'id': 3524226,

      ///订单编号
      'title': '快手点赞关注',

      ///订单标题
      'money': '0.31',

      ///订单价格
      'gotime': '03:26:03',
      'enTime': '2分45秒',

      ///剩余完成时间
      'type': '2',
      'taskType': '超简单',
      'wase': '4000',
      'ynTime': 3
    },
    {
      'id': 3524226,

      ///订单编号
      'title': '小红书点赞关注',

      ///订单标题
      'money': '0.33',

      ///订单价格
      'gotime': '03:26:03',
      'enTime': '2分45秒',

      ///剩余完成时间
      'type': '3',
      'taskType': '易通过',
      'wase': '3000',
      'ynTime': 10
    },
  ].obs;

  ScrollController scrollController = new ScrollController();

  final botText = '暂无数据'.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 4, vsync: this)..addListener(() {});
  }

  Color typeContext(String data) {
    switch (data) {
      case '易通过':
        return Color(0xff1DDAAB);
        break;
      case '超简单':
        return Color(0xff4B7EFF);
        break;
      case '视频教程':
        return Color(0xffFF5B0B);
        break;
      case '高收益':
        return Color(0xffF64967);
        break;
      default:
        return Color(0xffFF5B0B);
    }
  }

  String typeState(String data) {
    switch (data) {
      case '0':
        return '待提交';
        break;
      case '1':
        return '已撤销';
        break;
      case '2':
        return '已完成';
        break;
      case '3':
        return '审核中';
        break;
      default:
        return '待提交';
    }
  }

  Color typeStateColor(String data) {
    switch (data) {
      case '0':
        return Color(0xffFF5B0B);
        break;
      case '1':
        return Color(0xff646C7F);
        break;
      case '2':
        return Color(0xff171717);
        break;
      case '3':
        return Color(0xff36B365);
        break;
      default:
        return Color(0xff36B365);
    }
  }

  Widget typeStateWidget(String type, String gotime, String entime) {
    switch (type) {
      case '0':
        return Row(
          children: [
            Text(
              "剩余",
              style: TextStyle(fontSize: 24.sp, color: Color(0xff646C7F)),
            ),
            Text(
              "$gotime",
              style: TextStyle(fontSize: 24.sp, color: Color(0xffFF5B0B)),
            ),
            Text(
              "剩余",
              style: TextStyle(fontSize: 24.sp, color: Color(0xff646C7F)),
            ),
          ],
        );
        break;
      case '1':
        return Text(
              "任务已撤销",
              style: TextStyle(fontSize: 24.sp, color: Color(0xff646C7F)),
            );
        break;
      case '2':
        return Row(
          children: [
            Text(
              "用时",
              style: TextStyle(fontSize: 24.sp, color: Color(0xff646C7F)),
            ),
            Text(
              "$entime",
              style: TextStyle(fontSize: 24.sp, color: Color(0xff646C7F)),
            ),
          ],
        );
        break;
      case '3':
        return Text(
              "等待卖家审核",
              style: TextStyle(fontSize: 24.sp, color: Color(0xffFF5B0B)),
            );
        break;
      default:
        return Text("data");
    }
  }
}
