import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/core/network/api_manager.dart';
import 'package:dr_app/feature/auth/register/data/models/register_response_dm.dart';
import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';
import 'package:dr_app/feature/auth/register/domain/repositories/data_source/register_remote_data_source.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/network/endPoints.dart';
@Injectable(as:RegisterRemoteDataSource )
class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  ApiManager apiManager ;
  RegisterRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, RegisterResponseEntity>> register(String? name, String? email, String? phone, String? password, String? rePassword, int? gender)async {

      try {
        final List<ConnectivityResult> connectivityResult =
        await Connectivity().checkConnectivity();
        if (connectivityResult.contains(ConnectivityResult.wifi) ||
            connectivityResult.contains(ConnectivityResult.mobile)) {
          var response =
          await apiManager.postData(endPoint: EndPoints.register, body: {
            "name":name,
            "email": email,
            "phone":phone,
            "gender":gender,
            "password": password,
            "password_confirmation": rePassword,
          });
          var registerResponse = RegisterResponseDm.fromJson(response.data);
          if (response.statusCode! >= 200 && response.statusCode! < 300) {
            // todo: save token  or at login screen when login is success
            // SharedPreferenceUtils.saveData(key: "token", val: loginResponse.token);
            return Right(registerResponse);
          } else {
            return Left(ServerError(errorMessage: registerResponse.message!));
          }
        } else {
          return Left(NetworkError(errorMessage:"No Internet connection"));
        }
      } catch (e) {
        return Left(ServerError(errorMessage: e.toString()));
      }
    }
  }


