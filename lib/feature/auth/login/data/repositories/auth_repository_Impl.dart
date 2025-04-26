import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/login/domain/entities/login_response_entity.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/data_source/auth_remote_data_source.dart';
import '../../domain/repositories/repo/auth_repository.dart';
@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository  {
  final AuthRemoteDataSource remote;          // ✅

  AuthRepositoryImpl({required this.remote});

  @override
  Future<Either<Failures, LoginResponseEntity>> login(
      String email, String password) {
    return remote.login(email, password);
  }
}
