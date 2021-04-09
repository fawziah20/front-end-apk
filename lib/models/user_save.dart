part of 'models.dart';

class UserSave extends Equatable {
  final int id;
  final Perusahaan perusahaan;
  final String status;

  UserSave({
    this.id,
    this.perusahaan,
    this.status,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, perusahaan, status];
}

List<UserSave> mockUserSave = [
  UserSave(
    id: 1,
    perusahaan: mockPerusahaan[1],
    status: 'save',
  ),
  UserSave(
    id: 2,
    perusahaan: mockPerusahaan[2],
    status: 'unsave',
  ),
  UserSave(
    id: 3,
    perusahaan: mockPerusahaan[0],
    status: 'save',
  ),
  UserSave(
    id: 4,
    perusahaan: mockPerusahaan[3],
    status: 'unsave',
  ),
];
