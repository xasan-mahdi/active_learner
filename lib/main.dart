import 'package:active_learner/pages/homepg.dart';
import 'package:active_learner/pages/login.dart';
import 'package:flutter/material.dart';

import 'utils/routes.dart';

void main() {
  runApp(ac_learner());
}

class ac_learner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => login(),
        Myrt.hmrt: (context) => homepage(),
        Myrt.lgrt: (context) => login(),
      },
    );
  }
}
