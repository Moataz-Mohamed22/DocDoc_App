
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/core/network/api_manager.dart';

import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';

import 'package:either_dart/src/either.dart';

import '../../../../core/network/endPoints.dart';
import '../../domain/repositories/data_source/get_specialization_data_source.dart';
import '../models/specialization_dto.dart';

class GetSpecializationDataSourceDto implements GetSpecializationDataSource {
  ApiManager apiManager ;
  GetSpecializationDataSourceDto({required this.apiManager});
  @override
  Future<Either<Failures, SpecializationEntity>> getSpecialization() async {
  try {
    final List<ConnectivityResult> connectivityResult =
    await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile)) {
      var response = await apiManager.getData(
        endPoint: EndPoints.specialization,
      );
      var specializationResponse =await SpecializationDto.fromJson(response.data);
      if(response.statusCode! >= 200 && response.statusCode !<300){
        return Right(specializationResponse);
      } else {
        return Left(ServerError(errorMessage: specializationResponse.message!));
      }
    } else {
      return Left(NetworkError(errorMessage:"No Internet connection"));
    }
  } catch (e) {
    return Left(ServerError(errorMessage: e.toString()));
  }
  }
}
