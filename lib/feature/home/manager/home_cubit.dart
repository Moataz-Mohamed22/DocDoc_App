import 'package:dr_app/feature/home/domain/entities/specialization_entity.dart';
import 'package:dr_app/feature/home/domain/useCase/get_specialization_use_case.dart';
import 'package:dr_app/feature/home/manager/home_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
@injectable
class HomeCubit extends Cubit<HomeStates> {
GetSpecializationUseCase useCase ;
  HomeCubit({required this.useCase}):super (SpecializationLoadingState());
List<DataModelSpecializationEntity>specializationList = [];

void getSpecialization() async{
    emit(SpecializationLoadingState());
    var either =  await  useCase.invoke();
either.fold((error){

  emit(SpecializationErrorState(error: error));
  print("Error: ${error.errorMessage}");
}, (response){
  specializationList =response.data! ;
  emit(SpecializationSuccessState(specialization:response ));
  print(response.data!);
});
  }
}