import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:dr_app/feature/home/domain/repositories/repo/get_specialization_repository.dart';
import 'package:either_dart/src/either.dart';

class GetSpecializationRepositoryDto implements GetSpecializationRepository {
  @override
  Future<Either<Failures, SpecializationEntity>> getSpecialization() {
    // TODO: implement getSpecialization
    throw UnimplementedError();
  }
}