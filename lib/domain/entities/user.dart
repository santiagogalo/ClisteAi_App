// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String name;
  String lastname;
  String email;
  String password;
  String id;
  int credits;
  String urlphoto;

  UserModel({
    required this.name,
    required this.lastname,
    required this.email,
    required this.password,
    required this.id,
    required this.credits,
    required this.urlphoto,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        lastname: json["lastname"],
        email: json["email"],
        password: json["password"],
        id: json["Id"],
        credits: json["credits"],
        urlphoto: json["urlphoto"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastname": lastname,
        "email": email,
        "password": password,
        "Id": id,
        "credits": credits,
        "urlphoto": urlphoto,
      };
}
