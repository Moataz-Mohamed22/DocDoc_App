import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/auth/register/domain/entities/register_response_entity.dart';
import 'package:dr_app/feature/auth/register/domain/repositories/data_source/register_remote_data_source.dart';
import 'package:dr_app/feature/auth/register/domain/repositories/repo/register_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:RegisterRepository )
class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterRemoteDataSource remote ;
  RegisterRepositoryImpl({required this.remote});
  @override
  Future<Either<Failures, RegisterResponseEntity>> register(String? name, String? email, String? phone, String? password, String? rePassword, int? gender) {
  return remote.register(name, email, phone, password, rePassword, gender);
  }
}