part of 'models.dart';

enum UserSaveStatus { save, unsave }

class UserSave extends Equatable {
  final int id;
  final Perusahaan perusahaan;
  final User user;
  final UserSaveStatus status;

  UserSave({
    this.id,
    this.perusahaan,
    this.user,
    this.status,
  });

  @override
  List<Object> get props => [id, perusahaan, user, status];
}

UserSave mockUserSave = UserSave(
  id: 1,
  perusahaan: mockPerusahaan[1],
  user: mockUser,
  status: UserSaveStatus.save,
);
