import 'dart:convert';
import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart' as Gets;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:witkey/Routers/Routes.dart';


class Request {
  // 配置 Dio 实例
  static BaseOptions _options = BaseOptions(
    baseUrl: 'https://www.beacons.vip',
    connectTimeout: 50000,
    receiveTimeout: 30000,
  );

  // 创建 Dio 实例
  static Dio _dio = Dio(_options);
  
  // _request 是核心函数，所有的请求都会走这里
  static Future<T> _request<T>(String path,{String? method, Map? params, data}) async {
    // restful 请求处理
    if (params != null) {
      params.forEach((key, value) {
        if (path.indexOf(key) != -1) {
          path = path.replaceAll(":$key", value.toString());
        }
      });
    }
    LogUtil.v(data, tag: '发送的数据为：');
    try {
      /// 这里花费了一天时间，在当前接口内需要添加headers.formUrlEncodedContentType
      EasyLoading.instance 
      ..loadingStyle = EasyLoadingStyle.custom
      ///背景颜色
      ..backgroundColor = Color(0xfff4f7fb)
      ///进度颜色
      ..indicatorColor = Color(0xff0082CD)
      ..textColor = Color(0xff0082CD)
      ..textStyle = TextStyle(fontSize: 12)
      ..indicatorType = EasyLoadingIndicatorType.wave;

      EasyLoading.show();
      Response response = await _dio.request(path,data: data, options: Options(method: method,contentType: Headers.formUrlEncodedContentType,));
      if (response.statusCode == 200 || response.statusCode == 201) {
        EasyLoading.dismiss();
        var data = jsonDecode(response.data);
        try {
          // return data;
          /// 如果状态吗不等于0，说明错误，则进行提示
          if (data['code'] == "1") {
            LogUtil.v(data['code'],tag: '服务器错误，状态码为：');
            EasyLoading.showInfo("提示".tr+": ${data['msg']}");
            return Future.error(data['msg']);
          } else if(data['code'] == "404"){
            /// 如果状态丢失了，将用户token数据清空，让引导页可以直接登录
            EasyLoading.showError("nekTip2".tr);
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.setStringList('userData', []);
            Gets.Get.offAllNamed(Routes.Login);
            
            return Future.error(data['msg']);
          }else {
            ///其他状态说明正常
            LogUtil.v(data,tag: '响应的数据为：');
            return data;
          }
        } catch (e) {
          LogUtil.v(e, tag: '解析响应数据异常1');
          return Future.error('解析响应数据异常2');
        }
      } else {
        LogUtil.v(response.statusCode, tag: 'HTTP错误，状态码为：');
        EasyLoading.showInfo('HTTP错误，状态码为：${response.statusCode}');
        _handleHttpError(response.statusCode!);
        return Future.error('HTTP错误');
      }
    } on DioError catch (e, s) {
      LogUtil.v(_dioError(e), tag: '请求异常');
      EasyLoading.showInfo(_dioError(e));
      return Future.error(_dioError(e));
    } catch (e, s) {
      LogUtil.v(e, tag: '未知异常');
      return Future.error('未知异常');
    }
  }

  // 处理 Dio 异常
  static String _dioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.receiveTimeout:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.sendTimeout:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.response:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.cancel:
        return "请求已被取消，请重新请求";
        break;
      case DioErrorType.other:
        return "网络异常，请稍后重试！";
        break;
      default:
        return "Dio异常";
    }
  }

  // 处理 Http 错误码
  static void _handleHttpError(int errorCode) {
    String message;
    switch (errorCode) {
      case 400:
        message = '请求语法错误';
        break;
      case 401:
        message = '未授权，请登录';
        break;
      case 403:
        message = '拒绝访问';
        break;
      case 404:
        message = '请求出错';
        break;
      case 408:
        message = '请求超时';
        break;
      case 500:
        message = '服务器异常';
        break;
      case 501:
        message = '服务未实现';
        break;
      case 502:
        message = '网关错误';
        break;
      case 503:
        message = '服务不可用';
        break;
      case 504:
        message = '网关超时';
        break;
      case 505:
        message = 'HTTP版本不受支持';
        break;
      default:
        message = '请求失败，错误码：$errorCode';
    }
    EasyLoading.showError(message);
  }

  static Future<T> get<T>(String path, {Map? params}) {
    return _request(path, method: 'get', params: params);
  }

  static Future<T> post<T>(String path, {Map? params, data}) {
    return _request(path, method: 'post', params: params, data: data);
  }
  // 这里只写了 get 和 post，其他的别名大家自己手动加上去就行
}
