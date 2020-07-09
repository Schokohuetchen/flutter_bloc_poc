import 'package:flutter/material.dart';
import 'package:user_list/src/ui/user_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List',
      home: MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          body: UserList(),
        )
      )
    );
  }
}