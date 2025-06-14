import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/core/network/api_manager.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/network/endPoints.dart';
import '../../domain/repositories/data_source/get_specialization_data_source.dart';
import '../models/specialization_dto.dart';
@Injectable(as: GetSpecializationDataSource)
class GetSpecializationDataSourceDto implements GetSpecializationDataSource {
  ApiManager apiManager ;
  GetSpecializationDataSourceDto({required this.apiManager});
  @override
  Future<Either<Failures, SpecializationEntity>> getSpecialization(

      ) async {
  try {
    final List<ConnectivityResult> connectivityResult =
    await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile)) {
      var response = await apiManager.getData(
        endPoint: EndPoints.specialization,
        headers: {
          "Accept":"application/json",
          "Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzUwMDE5NTE0LCJleHAiOjE3NTAxMDU5MTQsIm5iZiI6MTc1MDAxOTUxNCwianRpIjoiZ2ZDRWI5Q1Z2RndtNEpJOSIsInN1YiI6IjM1MzAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.63sPPtmj27BzlCqhZGrxlIRoAWdKEip3H8hqc4iIBCQ"
        }
      );
      print('API Response: ${response.data}');
      var specializationResponse = SpecializationDto.fromJson(response.data);
      if(response.statusCode! >= 200 && response.statusCode! <300){

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
