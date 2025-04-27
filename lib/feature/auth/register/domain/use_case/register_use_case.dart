import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';
import 'package:dr_app/feature/auth/register/domain/repositories/repo/register_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
@injectable
class RegisterUseCase {
  RegisterRepository repository ;
  RegisterUseCase({required this.repository});
 Future<Either<Failures , RegisterResponseEntity>> invoke(  String?name ,
      String?email ,
      String?phone ,
      String?password ,
      String?rePassword ,
      int?gender ,){
   return repository.register(name, email, phone, password, rePassword, gender);
  }
}