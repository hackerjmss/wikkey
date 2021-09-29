import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MerchantPageController extends GetxController with SingleGetTickerProviderMixin {
  TabController? tabController;
  final listView = [
    {
      'id': 0,
      'title': '饿了么关注',
      'money': 0.31,
      'type': '易通过',
      'cash': 4000,
      'time': '3',
    },
    {
      'id': 1,
      'title': '小红书点赞收藏',
      'money': 0.31,
      'type': '超简单',
      'cash': 4000,
      'time': 3,
    },
    {
      'id': 2,
      'title': '联想会员小程序',
      'money': 0.31,
      'type': '视频教程',
      'cash': 4000,
      'time': 3,
    },
    {
      'id': 3,
      'title': '中国广大银行数字名片',
      'money': 0.31,
      'type': '易通过',
      'cash': 4000,
      'time': 3,
    },
    {
      'id': 4,
      'title': '拼多多商品砍价',
      'money': 0.31,
      'type': '超简单',
      'cash': 4000,
      'time': 3,
    },
    {
      'id': 5,
      'title': '支付宝天天领外卖券',
      'money': 0.31,
      'type': '易通过',
      'cash': 4000,
      'time': 3,
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
}
