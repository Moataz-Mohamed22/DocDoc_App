import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';
import 'package:either_dart/either.dart';

abstract class RegisterRepository {
 Future<Either<Failures,RegisterResponseEntity>> register(
      String?name ,
      String?email ,
      String?phone ,
      String?password ,
      String?rePassword ,
      int?gender ,
      );
}