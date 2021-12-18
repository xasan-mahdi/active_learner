import 'dart:ui';

import 'package:active_learner/utils/routes.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool cb = false;
  final _fk = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_fk.currentState!.validate()) {
      setState(() {
        cb = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myrt.hmrt);
      setState(() {
        cb = false;
        name = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Form(
        key: _fk,
        child: Column(
          children: [
            SizedBox(
              height: 99,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
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
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'User-Name',
                        hintStyle: TextStyle(color: Colors.red),
                        labelText: 'User-Name',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25),
                           borderSide: BorderSide(width: 3, style:BorderStyle.solid, color:Colors.blue)
                        ),
                        prefixIcon: Icon(Icons.person_off)),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'User-name Can not Be Empty';
                      }
                      return null;
                    },
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                        ),
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(25),
                           borderSide: BorderSide(width: 3, style:BorderStyle.solid, color:Colors.blue)
                        ),
                        prefixIcon: Icon(Icons.password_sharp)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Pasword Can not be Empty';
                      } else if (value.length < 6) {
                        return 'Password Must Be At Least 6 xaraf';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Material(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(cb ? 150 : 15),
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: cb ? 80 : 330,
                  height: 50,
                  alignment: Alignment.center,
                  child: cb
                      ? Icon(
                          Icons.done,
                          color: Colors.black,
                        )
                      : Text('Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                ),
              ),
            )
            // ElevatedButton.icon(
            // onPressed: () {
            // Navigator.pushNamed(context, Myrt.hmrt);
            //},
            //label: Text('Login'),
            //icon: Icon(Icons.login_outlined),
            //style: ElevatedButton.styleFrom(
            //primary: Color(0xE10A3C5E),
            //  onPrimary: Colors.white,
            // minimumSize: Size(530, 60),
            //shadowColor: Color(0xFF151A1A),
            //elevation: 7,
            //shape: StadiumBorder()),
            //)
          ],
        ),
      )),
    );
  }
}
