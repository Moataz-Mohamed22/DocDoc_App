import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:dr_app/feature/home/domain/repositories/repo/get_specialization_repository.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/data_source/get_specialization_data_source.dart';
@Injectable(as:GetSpecializationRepository )
class GetSpecializationRepositoryDto implements GetSpecializationRepository {
  GetSpecializationDataSource remote ;
  GetSpecializationRepositoryDto({required this.remote});
  @override
  Future<Either<Failures, SpecializationEntity>> getSpecialization() {

    return remote.getSpecialization();
  }
}