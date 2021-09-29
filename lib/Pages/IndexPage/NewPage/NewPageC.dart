import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewController extends GetxController with SingleGetTickerProviderMixin {
  TabController? tabController;
  final listView = [
    {
      'id': 0,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 1,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 2,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 3,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 4,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 5,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 6,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 7,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
    },
    {
      'id': 8,
      'title': '联想会员小程序',
      'context': '您发布的《联想会员小程序》余额不足30元，请尽快续费，感谢您的支持！祝您生活愉快！！',
      'time': '2',
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
}
