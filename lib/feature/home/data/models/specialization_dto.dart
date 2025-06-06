import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';

class SpecializationDto  extends SpecializationEntity{
  SpecializationDto({
      super.message,
      super.data,
    super.status,
    super.code,});

  SpecializationDto.fromJson(dynamic json) {
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(DataSpecializationDto.fromJson(v));
      });
    }
    status = json['status'];
    code = json['code'];
  }



}

class DataSpecializationDto extends DataSpecializationEntity {
  DataSpecializationDto({
      super.id,
    super.name,
    super.doctors,});

  DataSpecializationDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    if (json['doctors'] != null) {
      doctors = [];
      json['doctors'].forEach((v) {
        doctors?.add(DoctorsDto.fromJson(v));
      });
    }
  }



}

class DoctorsDto extends DoctorsEntity {
  DoctorsDto({
    super.id,
    super.name,
    super.email,
    super.phone,
    super.photo,
    super.gender,
    super.address,
    super.description,
    super.degree,
    super.specialization,
    super.city,
    super.appointPrice,
    super.startTime,
    super.endTime,});

  DoctorsDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    photo = json['photo'];
    gender = json['gender'];
    address = json['address'];
    description = json['description'];
    degree = json['degree'];
    specialization = json['specialization'] != null ? SpecializationSmallerDto.fromJson(json['specialization']) : null;
    city = json['city'] != null ? CityDto.fromJson(json['city']) : null;
    appointPrice = json['appoint_price'];
    startTime = json['start_time'];
    endTime = json['end_time'];
  }


}

class CityDto extends CityEntity {
  CityDto({
    super.id,
    super.name,
    super.governrate,});

  CityDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    governrate = json['governrate'] != null ? GovernRateDto.fromJson(json['governrate']) : null;
  }



}

class GovernRateDto extends GovernRateEntity {
  GovernRateDto({
      super.id,
      super.name,});

  GovernRateDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }



}

class SpecializationSmallerDto extends SpecializationSmallerEntity {
  SpecializationSmallerDto({
      super.id,
      super.name,});

  SpecializationSmallerDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }



}