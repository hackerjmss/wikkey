import 'package:get/get.dart';
import 'package:witkey/Pages/IndexPage/Home/Home.dart';
import 'package:witkey/Pages/IndexPage/MerchantPage/MerchantPage.dart';
import 'package:witkey/Pages/IndexPage/MyTaskPage/MyTaskPage.dart';
import 'package:witkey/Pages/IndexPage/TaskInfoPage/TaskInfoPage.dart';
import 'package:witkey/Pages/SettingPage/EditPayAliPay/EditPayAliPay.dart';
import 'package:witkey/Pages/SettingPage/EditPayBank/EditPayBank.dart';
import 'package:witkey/Pages/SettingPage/EditPayWeChatPay/EditPayWeChatPay.dart';
import 'package:witkey/Pages/SettingPage/ForgetPass/ForgetPass.dart';
import 'package:witkey/Pages/SettingPage/LoginPage/Login.dart';
import 'package:witkey/Pages/SettingPage/Pay/Pay.dart';
import 'package:witkey/Pages/SettingPage/RegUser/RegUser.dart';
import 'package:witkey/Pages/SettingPage/SplashBinding/SplashBinding.dart';
import 'package:witkey/Pages/SettingPage/UpdateBank/UpdateBank.dart';
import 'package:witkey/Pages/SettingPage/UpdeteAliPay/UpdeteAliPay.dart';
import 'package:witkey/Pages/SettingPage/UpdeteWeChat/UpdeteWeChat.dart';
import 'Routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.Splash, page: () => SplashPage()),
    GetPage(name: Routes.Login, page: () => LoginPage()),
    GetPage(name: Routes.Home, page: () => Home()),
    GetPage(name: Routes.TaskInfo, page: () => TaskInfoPage()),
    GetPage(name: Routes.RegUser, page: () => RegUserPage()),
    GetPage(name: Routes.ForgetPass, page: () => ForgetPassPage()),
    GetPage(name: Routes.MyTask, page: () => MyTaskPage()),
    GetPage(name: Routes.Pay, page: () => Ply()),
    GetPage(name: Routes.UPDATEALIPAY, page: () => UpdeteAliPay()),
    GetPage(name: Routes.UPDATEWECHAT, page: () => UpdeteWeChat()),
    GetPage(name: Routes.UPDATEBANK, page: () => UpdateBank()),
    GetPage(name: Routes.EditPayAliPay, page: () => EditPayAliPay()),
    GetPage(name: Routes.EditPayWeChat, page: () => EditPayWeChatPay()),
    GetPage(name: Routes.EditAddBank, page: () => EditPayBank()),
    GetPage(name: Routes.Merchant, page: ()=>MerchantPage())
  ];
}
