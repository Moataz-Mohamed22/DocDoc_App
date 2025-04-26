import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/failures.dart';
import '../entities/login_response_entity.dart';
import '../repositories/repo/auth_repository.dart';
@injectable
class LoginUseCase {

  AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<Either<Failures, LoginResponseEntity>> invoke(
  String email,
  String password,
  ) {
  return authRepository.login(email, password);
  }
  }
