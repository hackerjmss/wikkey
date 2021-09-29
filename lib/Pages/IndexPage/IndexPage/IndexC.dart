import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:witkey/Routers/Routes.dart';

class IndexController extends GetxController {
  List menu = [
    {
      'id':0,'images':'static/images/index1.png','title':'新手任务','to':null
    },
    {
      'id':1,'images':'static/images/index2.png','title':'每日奖励','to':null
    },
    {
      'id':2,'images':'static/images/index3.png','title':'邀请排行','to':null
    },
    {
      'id':3,'images':'static/images/index4.png','title':'我的接单','to':Routes.MyTask
    },
    {
      'id':4,'images':'static/images/index5.png','title':'我的派单','to':Routes.Merchant
    },
    {
      'id':5,'images':'static/images/index6.png','title':'我的收藏','to':null
    },
  ];

  final listView = [
    {
      'id':0,'title':'饿了么关注','money':0.31,'type':'易通过','cash':4000,'time':'3',
    },
    {
      'id':1,'title':'小红书点赞收藏','money':0.31,'type':'超简单','cash':4000,'time':3,
    },
    {
      'id':2,'title':'联想会员小程序','money':0.31,'type':'视频教程','cash':4000,'time':3,
    },
    {
      'id':3,'title':'中国广大银行数字名片','money':0.31,'type':'易通过','cash':4000,'time':3,
    },
    {
      'id':4,'title':'拼多多商品砍价','money':0.31,'type':'超简单','cash':4000,'time':3,
    },
    {
      'id':5,'title':'支付宝天天领外卖券','money':0.31,'type':'易通过','cash':4000,'time':3,
    },
  ].obs;

  final moneyList = [
    {
      'id':0,'tel':'132****0031','money':10,'time':'2021.9.23 14:41:36',
    },
    {
      'id':1,'tel':'132****0032','money':20,'time':'2021.9.23 14:42:36',
    },
    {
      'id':2,'tel':'132****0033','money':30,'time':'2021.9.23 14:43:36',
    },
    {
      'id':3,'tel':'132****0034','money':40,'time':'2021.9.23 14:44:36',
    },
    {
      'id':4,'tel':'132****0035','money':50,'time':'2021.9.23 14:45:36',
    },
    {
      'id':5,'tel':'132****0036','money':60,'time':'2021.9.23 14:46:36',
    },
  ].obs;

  ScrollController scrollController = new ScrollController();

  final botText = '暂无数据'.obs;

  final initWidth = 0.obs;
  final widgetwidth = 48.obs;

  Color typeContext(String data){
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