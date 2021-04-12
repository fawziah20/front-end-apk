import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latihan1/models/models.dart';
import 'package:latihan1/services/services.dart';

part 'save_state.dart';

class SaveCubit extends Cubit<SaveState> {
  SaveCubit() : super(SaveInitial());

  Future<void> getSave() async {
    ApiReturnValue<List<UserSave>> result =
        await UserSaveServices.getUserSave();

    if (result.value != null) {
      emit(SaveLoaded(result.value));
    } else {
      emit(SaveLoadingFailed(result.message));
    }
  }
}
