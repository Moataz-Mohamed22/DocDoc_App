import 'package:dr_app/core/errors/failures.dart';
import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';

abstract class HomeStates  {}
class SpecializationLoadingState extends HomeStates {}
class SpecializationSuccessState extends HomeStates {
  SpecializationSuccessState({required this.specialization});
 final SpecializationEntity  specialization;
}
class SpecializationErrorState extends HomeStates {
  SpecializationErrorState({required this.error});
  Failures error ;
}