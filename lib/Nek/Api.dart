


import 'Nek.dart';

class Api {

  ///获取验证码
  static code(data) {
    return Request.post("/#",data: data,);
  }
}