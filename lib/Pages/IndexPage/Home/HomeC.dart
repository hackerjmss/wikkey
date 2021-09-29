import 'package:get/get.dart';


class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var openId = 0.obs;

  //页面切换逻辑
  void changePage(int index) {
    openId.value = index;
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex.value) {
      currentIndex.value = index; //背景颜色
    }
  }
}


