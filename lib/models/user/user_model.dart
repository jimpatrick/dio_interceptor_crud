import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UsersModel {
  UsersModel({
    required this.id,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    required this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String email;
  String? emailVerifiedAt;
  String createdAt;
  String? updatedAt;

  factory UsersModel.fromJson(Map<String, dynamic> json) => _$UsersModelFromJson(json);

  Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}
