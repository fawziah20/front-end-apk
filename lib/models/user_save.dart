part of 'models.dart';

class UserSave extends Equatable {
  final int id;
  final Perusahaan perusahaan;
  final String status;
  final User user;

  UserSave({
    this.id,
    this.perusahaan,
    this.status,
    this.user,
  });

  UserSave copyWith({
    int id,
    final Perusahaan perusahaan,
    final String status,
    final User user,
  }) {
    return UserSave(
      id: id ?? this.id,
      perusahaan: perusahaan ?? this.perusahaan,
      status: status ?? this.status,
      user: user ?? this.user,
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [id, perusahaan, status, user];
}

List<UserSave> mockUserSave = [
  UserSave(
    id: 1,
    perusahaan: mockPerusahaan[1],
    status: 'save',
    user: mockUser,
  ),
  UserSave(
    id: 2,
    perusahaan: mockPerusahaan[2],
    status: 'unsave',
    user: mockUser,
  ),
  UserSave(
    id: 3,
    perusahaan: mockPerusahaan[0],
    status: 'save',
    user: mockUser,
  ),
  UserSave(
    id: 4,
    perusahaan: mockPerusahaan[3],
    status: 'unsave',
    user: mockUser,
  ),
];
