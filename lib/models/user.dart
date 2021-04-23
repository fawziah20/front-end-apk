part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String picture;
  final String information;
  final String password;

  User(
      {this.id,
      this.name,
      this.email,
      this.picture,
      this.information,
      this.password});

  @override
  List<Object> get props => [id, name, email, picture, information, password];
}

User mockUser = User(
  id: 1,
  name: "Jamal",
  email: "jamal@gmail.com",
  password: "12345678",
  picture:
      "https://1.bp.blogspot.com/-WOdUbSDllyI/XWj0iGFa5ZI/AAAAAAAACSk/x-2Bh4MEoVYKUSaO9EGSRNXRJ0YSFX2SgCLcBGAs/s1600/Proyek%2B119.jpg",
  information: "Senior Front-End Developer Flutter",
);
