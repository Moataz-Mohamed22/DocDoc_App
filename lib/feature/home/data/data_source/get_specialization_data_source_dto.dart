import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dr_app/feature/home/data/models/specialization_dto.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/network/api_manager.dart';
import '../../../../core/network/endPoints.dart';
import '../../domain/entities/specialization_entity.dart';
import '../../domain/repositories/data_source/get_specialization_data_source.dart';
@Injectable(as:GetSpecializationDataSource )
class GetSpecializationDataSourceDto implements GetSpecializationDataSource {
  ApiManager apiManager;

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

