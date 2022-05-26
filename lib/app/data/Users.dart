// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
    this.users,
  });

  List<User>? users;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        users: json["users"] == null
            ? null
            : List<User>.from(json["users"].map((x) => User.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "users": users == null
            ? null
            : List<dynamic>.from(users!.map((x) => x.toJson())),
      };
}

class User {
  User({
    this.userName,
    this.password,
    this.phone,
    this.name,
    this.isAdmin,
    this.id,
  });

  String? userName;
  String? password;
  String? phone;
  String? name;
  bool? isAdmin;
  int? id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json["userName"] == null ? null : json["userName"],
        password: json["password"] == null ? null : json["password"],
        phone: json["phone"] == null ? null : json["phone"],
        name: json["name"] == null ? null : json["name"],
        isAdmin: json["isAdmin"] == null ? null : json["isAdmin"],
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName == null ? null : userName,
        "password": password == null ? null : password,
        "phone": phone == null ? null : phone,
        "name": name == null ? null : name,
        "isAdmin": isAdmin == null ? null : isAdmin,
        "id": id == null ? null : id,
      };
}
