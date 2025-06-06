
import 'package:dr_app/core/errors/failures.dart';

import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';

import 'package:either_dart/src/either.dart';

import '../../domain/repositories/data_source/get_specialization_data_source.dart';

class GetSpecializationDataSourceDto implements GetSpecializationDataSource {
  @override
  Future<Either<Failures, SpecializationEntity>> getSpecialization() {
    // TODO: implement getSpecialization
    throw UnimplementedError();
  }
}
