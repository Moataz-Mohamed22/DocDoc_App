import 'package:either_dart/either.dart';

import '../../../../../../core/errors/failures.dart';
import '../../entities/register_response_entity.dart';

abstract class RegisterRemoteDataSource {
  Future<Either<Failures,RegisterResponseEntity>> register(
      String?name ,
      String?email ,
      String?phone ,
      String?password ,
      String?rePassword ,
      int?gender ,
      );
}