part of 'models.dart';

enum UserSaveStatus { save, unsave }

class UserSave {
  final int id;
  final Perusahaan perusahaan;
  final UserSaveStatus status;

  UserSave({
    this.id,
    this.perusahaan,
    this.status,
  });
}

List<UserSave> mockUserSave = [
  UserSave(
    id: 1,
    perusahaan: mockPerusahaan[1],
    status: UserSaveStatus.save,
  ),
  UserSave(
    id: 2,
    perusahaan: mockPerusahaan[2],
    status: UserSaveStatus.save,
  ),
  UserSave(
    id: 1,
    perusahaan: mockPerusahaan[4],
    status: UserSaveStatus.save,
  ),
];
