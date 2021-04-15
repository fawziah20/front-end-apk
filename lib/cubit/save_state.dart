part of 'save_cubit.dart';

abstract class SaveState extends Equatable {
  const SaveState();

  @override
  List<Object> get props => [];
}

class SaveInitial extends SaveState {}

class SaveLoaded extends SaveState {
  final List<UserSave> save;

  SaveLoaded(this.save);

  @override
  List<Object> get props => [save];
}

class SaveLoadingFailed extends SaveState {
  final String message;

  SaveLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
