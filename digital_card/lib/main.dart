import 'package:digital_card/UI/desain.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Digital Card'),
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: Center(child: Home())
    );
  }
}