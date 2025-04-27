class RegisterResponseEntity {
  RegisterResponseEntity({
      this.message, 
      this.data, 
      this.status, 
      this.code, });

  String? message;
  RegisterDataEntity? data;
  bool? status;
  num? code;

}

class RegisterDataEntity {
  RegisterDataEntity({
      this.token, 
      this.username,});

  String? token;
  String? username;


}