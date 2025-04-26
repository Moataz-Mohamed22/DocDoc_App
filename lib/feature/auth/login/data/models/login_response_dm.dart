import 'package:dr_app/feature/auth/login/domain/entities/login_response_entity.dart';

class LoginResponseDm extends LoginResponseEntity {
  LoginResponseDm({
      super.message,
    super.data,
    super.status,
    super.code,});

  LoginResponseDm.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? DataLoginDm.fromJson(json['data']) : null;
    status = json['status'];
    code = json['code'];
  }


  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   map['message'] = message;
  //   if (data != null) {
  //     map['data'] = data?.toJson();
  //   }
  //   map['status'] = status;
  //   map['code'] = code;
  //   return map;
  // }

}

class DataLoginDm  extends DataLoginEntity{
  DataLoginDm({
    super.token,
    super.username,});

  DataLoginDm.fromJson(dynamic json) {
    token = json['token'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    map['username'] = username;
    return map;
  }

}