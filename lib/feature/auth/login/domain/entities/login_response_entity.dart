class LoginResponseEntity {
  LoginResponseEntity({
      this.message, 
      this.data, 
      this.status, 
      this.code,});

  String? message;
  DataLoginEntity? data;
  bool? status;
  num? code;


}

class DataLoginEntity {
  DataLoginEntity({
      this.token, 
      this.username,});

  DataLoginEntity.fromJson(dynamic json) {
    token = json['token'];
    username = json['username'];
  }
  String? token;
  String? username;


}