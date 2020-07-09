import 'package:user_list/src/models/user.dart';
import 'package:user_list/src/network/user_api_provider.dart';

class UserRepository {
  final _userApiProvider = UserApiProvider();

  Future<UserModel> fetchAllUsers() => _userApiProvider.fetchUserList();
}