import 'package:flutter/material.dart';
import 'package:foodbuddy/acc1.dart';
import 'package:foodbuddy/acc2.dart';
import 'package:foodbuddy/address.dart';
import 'package:foodbuddy/first.dart';
import 'package:foodbuddy/hello.dart';
import 'package:foodbuddy/home_page.dart';
import 'package:foodbuddy/personal.dart';
import 'package:foodbuddy/user.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: user(),
    );
  }
}
