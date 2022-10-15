// ignore_for_file: prefer_const_constructors

import 'package:authentication_1/widgets/my_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    final logoutButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.red,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          "LOGIN",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset("images/applelogo.png", fit: BoxFit.contain),
              ),
              Text(

                "Welcome to the app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              MyText(textName: widget.name, color: Colors.red),
              MyText(),
              MyText(textName: "a"),
              SizedBox(
                height: 45,
              ),
              logoutButton,
            ],
          ),
        ),
      ),
    );
  }
}
