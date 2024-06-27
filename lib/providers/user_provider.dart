import 'package:flutter/material.dart';
import '../common/app_const.dart';
import '../models/movie.dart';
import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _userList = AppConst.userList;
  List<User> get userList => _userList;

  final List<Movie> _movieList = AppConst.movieList;
  List<Movie> get movieList => _movieList;
}
