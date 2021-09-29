import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:witkey/Pages/IndexPage/NewPage/NewPageC.dart';
import 'package:witkey/Widget/Ing.dart';
import 'package:witkey/Widget/TabBar.dart';

class NewPage extends GetView<NewController> {
  NewController news = Get.put(NewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff1f2f6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "我的消息",
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
                Text("系统消息"),
                Text("派单消息"),
                Text("接单消息"),
                Text("系统公告"),
              ], news.tabController, Alignment.center),
            ),
            Expanded(
                child: TabBarView(controller: news.tabController, children: [
              Obx(
                () => news.listView.length == 0
                    ? ing()
                    : GridView.builder(
                        /// 监听滚动的状态，
                        controller: news.scrollController,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          // 设置每子元素的大小（宽高比）
                          childAspectRatio: 3.2,
                        ),
                        itemBuilder: (context, index) {
                          if (index == news.listView.length) {
                            /// 构建到了最后一条，并且等于数组长度，则显示当前内容
                            return Center(
                                child: Text(
                              "${news.botText.value}".tr,
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.sp)),
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
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: new BoxDecoration(
                                          color: Color(0xffFF5B0B),
                                          //设置四周圆角 角度
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.sp)),
                                        ),
                                        height: 12.h,
                                        width: 12.w,
                                      ),
                                      SizedBox(width: 19.w,),
                                      Text('${news.listView[index]['title']}',style: TextStyle(fontSize: 32.sp,color: Color(0xff171717),fontWeight: FontWeight.bold),),
                                      SizedBox(width: 31.w,),
                                      Text('${news.listView[index]['time']}小时',style: TextStyle(fontSize: 24.sp,color: Color(0xff646C7F)),),
                                    ],
                                  ),
                                  Text('${news.listView[index]['context']}',style: TextStyle(fontSize: 28.sp,color: Color(0xff646C7F)),),
                                ],
                              ),
                            );
                          }
                        },
                        itemCount: news.listView.length + 1,
                      ),
              ),
              ing(),
              ing(),
              ing(),
            ]))
          ],
        )));
  }
}
