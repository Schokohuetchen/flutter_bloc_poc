class UserModel {
  List<_User> _users = [];

  UserModel.fromJson(List json) {
    List<_User> temp = [];

    for (int i = 0; i < json.length; i++) {
      _User user = _User(json[i]);
      temp.add(user);
    }

    _users = temp;
  }

  List<_User> get users => _users;
}

class _User {
  int _id;
  String _name;
  String _username;

  _User(json) {
    this._id = json['id'];
    this._name = json['name'];
    this._username = json['username'];
  }

  int get id => _id;
  String get name => _name;
  String get username => _username;
}
