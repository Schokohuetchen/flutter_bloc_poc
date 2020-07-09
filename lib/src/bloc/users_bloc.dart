import 'dart:async';

import 'package:user_list/src/models/user.dart';
import 'package:user_list/src/repository/user_repository.dart';

class UsersBloc {
  final _userRepository = UserRepository();
  final _userController = StreamController<UserModel>();

  Stream<UserModel> get userStream => _userController.stream;

  fetchAllUsers() async {
    UserModel users = await _userRepository.fetchAllUsers();
    _userController.sink.add(users);
  }

  dispose() {
    _userController.close();
  }
}

final bloc = UsersBloc();