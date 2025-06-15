class SpecializationEntity {
  SpecializationEntity({
      this.message, 
      this.data, 
      this.status, 
      this.code,});

  String? message;
  List<DataModelSpecializationEntity>? data;
  bool? status;
  num? code;


}

class DataModelSpecializationEntity {
  DataModelSpecializationEntity({
      this.id, 
      this.name, 
      this.doctors,});

  num? id;
  String? name;
  List<DoctorsEntity>? doctors;


}

class DoctorsEntity {
  DoctorsEntity({
      this.id, 
      this.name, 
      this.email, 
      this.phone, 
      this.photo, 
      this.gender, 
      this.address, 
      this.description, 
      this.degree, 
      this.specialization, 
      this.city, 
      this.appointPrice, 
      this.startTime, 
      this.endTime,});

  num? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  SpecializationSmallerEntity? specialization;
  CityEntity? city;
  num? appointPrice;
  String? startTime;
  String? endTime;


}

class CityEntity {
  CityEntity({
      this.id, 
      this.name, 
      this.governrate,});

  num? id;
  String? name;
  GovernRateEntity? governrate;


}

class GovernRateEntity {
  GovernRateEntity({
      this.id, 
      this.name,});

  num? id;
  String? name;


}

class SpecializationSmallerEntity {
  SpecializationSmallerEntity({
      this.id,
      this.name,});

  num? id;
  String? name;


}