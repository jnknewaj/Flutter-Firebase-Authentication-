import 'package:authentication/domain/core/app_user.dart';
import 'package:flutter/material.dart';

class ProfileFormPage extends StatelessWidget {
  final AppUser appUser;

  const ProfileFormPage({Key key, @required this.appUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Container(),
    );
  }
}
