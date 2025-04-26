import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/login/domain/entities/login_response_entity.dart';
import 'package:either_dart/either.dart';

abstract class AuthRemoteDataSource {
Future<Either<Failures , LoginResponseEntity>>  login( String email , String password);
}