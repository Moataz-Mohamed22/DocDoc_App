import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:dr_app/feature/home/domain/repositories/repo/get_specialization_repository.dart';
import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetSpecializationUseCase {
  GetSpecializationRepository repository ;
  GetSpecializationUseCase({required this.repository});
  Future<Either<Failures , SpecializationEntity>>invoke(){
    return repository.getSpecialization();
  }
}