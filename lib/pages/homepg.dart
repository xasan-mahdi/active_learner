import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String cr = 'Flutter';
    final int dys = 30;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Catalog App',
            style: TextStyle(
              fontSize: 35,
              letterSpacing: 2.4,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Kuzo Dhawoow $cr - Course O0 $dys Maalmood Ah",
            style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: Drawer(),);
      
  }
}
