import 'package:either_dart/either.dart';
import '../../../../../../core/errors/failures.dart';
import '../../entities/login_response_entity.dart';
abstract class AuthRepository {
  Future<Either<Failures , LoginResponseEntity>>  login( String email , String password);
}