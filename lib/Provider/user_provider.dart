
import 'package:bus_ticket_booking_app/DB/db_helper.dart';
import 'package:bus_ticket_booking_app/Models/user_model.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  late UserModel userModel;

  Future<UserModel?> getUserByEmail(String email) =>
      DbHelper.getUserByEmail(email);

  Future<int> insertUser(UserModel userModel) =>
      DbHelper.insertUser(userModel);
}