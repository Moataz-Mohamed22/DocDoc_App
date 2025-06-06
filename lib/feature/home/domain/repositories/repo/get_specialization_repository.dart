import 'package:either_dart/either.dart';

import '../../../../../core/errors/failures.dart';
import '../../entities/specialization_entity.dart';

abstract class GetSpecializationRepository {
  Future<Either<Failures ,SpecializationEntity>> getSpecialization ();
}