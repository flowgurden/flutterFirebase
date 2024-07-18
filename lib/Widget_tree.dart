import 'package:flutter/widgets.dart';
import 'package:flutter_firebase/HomePage.dart';

import 'package:flutter_firebase/auth.dart';
import 'package:flutter_firebase/login_register_page.dart';


class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage(key: UniqueKey());
        } else {
          return const LoginRegisterPage();
        }
      },
    );
  }
}