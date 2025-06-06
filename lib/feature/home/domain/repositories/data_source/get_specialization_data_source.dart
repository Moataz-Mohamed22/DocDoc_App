import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:either_dart/either.dart';

abstract class GetSpecializationDataSource {
 Future<Either<Failures ,SpecializationEntity>> getSpecialization ();
}