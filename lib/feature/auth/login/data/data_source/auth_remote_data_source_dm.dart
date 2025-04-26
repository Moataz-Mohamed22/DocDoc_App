import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/core/network/api_manager.dart';
import 'package:dr_app/core/network/endPoints.dart';
import 'package:dr_app/feature/auth/login/data/models/login_response_dm.dart';
import 'package:dr_app/feature/auth/login/domain/entities/login_response_entity.dart';
import 'package:dr_app/feature/auth/login/domain/repositories/data_source/auth_remote_data_source.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  ApiManager apiManager ;
  AuthRemoteDataSourceImpl({required this.apiManager});
  @override
  Future<Either<Failures, LoginResponseEntity>> login(String email,
      String password) async {
    try {
      final List<ConnectivityResult> connectivityResult =
      await Connectivity().checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.wifi) ||
          connectivityResult.contains(ConnectivityResult.mobile)) {
        var response =
        await apiManager.postData(endPoint: EndPoints.login, body: {
          "email": email,
          "password": password,
        });
        var loginResponse = LoginResponseDm.fromJson(response.data);
        if (response.statusCode! >= 200 && response.statusCode! < 300) {
          // todo: save token  or at login screen when login is success
          // SharedPreferenceUtils.saveData(key: "token", val: loginResponse.token);
          return Right(loginResponse);
        } else {
          return Left(ServerError(errorMessage: loginResponse.message!));
        }
      } else {
        return Left(NetworkError(errorMessage:"No Internet connection"));
      }
    } catch (e) {
      return Left(ServerError(errorMessage: e.toString()));
    }
  }
}
