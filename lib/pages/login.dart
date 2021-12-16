import 'package:active_learner/utils/routes.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 104,
          ),
          Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Image.asset(
            "img/lg.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 33),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'User-Name',
                      hintStyle: TextStyle(color: Colors.red),
                      labelText: 'User-Name',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2.4),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF017809), width: 2.4),
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.person_off)),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.red),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2.4),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFF017809), width: 2.4),
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.password_sharp)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, Myrt.hmrt);
            },
            label: Text('Login'),
            icon: Icon(Icons.login_outlined),
            style: ElevatedButton.styleFrom(
                //primary: Color(0xE10A3C5E),
                onPrimary: Colors.white,
                minimumSize: Size(530, 60),
                shadowColor: Color(0xFF151A1A),
                elevation: 7,
                shape: StadiumBorder()),
          )
        ],
      )),
    );
  }
}
