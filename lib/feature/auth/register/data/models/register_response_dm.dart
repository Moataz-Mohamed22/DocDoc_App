import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';

class RegisterResponseDm extends RegisterResponseEntity {
  RegisterResponseDm({
      super.message,
    super.data,
    super.status,
    super.code,});

  RegisterResponseDm.fromJson(dynamic json) {
    message = json['message'];
    data = json['data'] != null ? RegisterDataDm.fromJson(json['data']) : null;
    status = json['status'];
    code = json['code'];
  }



}

class RegisterDataDm extends RegisterDataEntity {
  RegisterDataDm({
    super.token,
    super.username,});

  RegisterDataDm.fromJson(dynamic json) {
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