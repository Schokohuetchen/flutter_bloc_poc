import 'package:flutter/material.dart';
import 'package:user_list/src/bloc/users_bloc.dart';
import 'package:user_list/src/models/user.dart';

class UserList extends StatefulWidget {
  @override
  createState() => new UserListState();
}

class UserListState extends State<UserList> {
  @override
  void initState() {
    super.initState();
    bloc.fetchAllUsers();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            title: new Text('User List')
        ),
      body: StreamBuilder(
        stream: bloc.userStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return _buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          return Center(child: CircularProgressIndicator());
        },
      )
    );
  }

  Widget _buildList(AsyncSnapshot<UserModel> snapshot)  {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: snapshot.data.users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(snapshot.data.users[index].name)
          );
        },
    );
  }
}