import 'package:flutter/material.dart';

class UserModel {
  final String? name;
  final String? mail;
  final String? cell;

  UserModel({this.name, this.mail, this.cell});

List<UserModel> user = [
  UserModel(name: 'Nicolas Rojas Niño'),
  UserModel(mail: 'nicolas@imagineapss.co'),
  UserModel(cell: '3114797257'),
];
}