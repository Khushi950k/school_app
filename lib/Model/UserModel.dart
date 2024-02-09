
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  bool status;
  String message;
  List<Key> key;

  UserModel({
    required this.status,
    required this.message,
    required this.key,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    status: json["status"],
    message: json["message"],
    key: List<Key>.from(json["key"].map((x) => Key.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "key": List<dynamic>.from(key.map((x) => x.toJson())),
  };
}

class Key {
  String id;
  String title;
  String photo;

  Key({
    required this.id,
    required this.title,
    required this.photo,
  });

  factory Key.fromJson(Map<String, dynamic> json) => Key(
    id: json["id"],
    title: json["title"],
    photo: json["photo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "photo": photo,
  };
}
