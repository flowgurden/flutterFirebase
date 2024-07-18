import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/auth.dart';








class HomePage extends StatelessWidget {
  HomePage({required Key key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('Flutter Firebase Auth');
  }

  Widget _userUID() {
    return Text(user?.email ?? 'User Email');
  }

  Widget _signOutButtun() {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _title(),
            _userUID(),
            _signOutButtun(),
          ],
        ),
      ),
    );
  }
}