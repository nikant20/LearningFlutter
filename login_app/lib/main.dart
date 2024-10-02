import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


void main() {
  runApp(const IMobile());
}

class IMobile extends StatefulWidget {
  const IMobile({super.key});

  @override
  State<IMobile> createState() => _IMobileState();
}

class _IMobileState extends State<IMobile> {
  @override
  Widget build(BuildContext context) {
    // if(Platform.isIOS){
    //   return const CupertinoApp(
    //     color: Colors.amber,
    //     home: LoginScreen(),
    //     debugShowCheckedModeBanner: false,
    //   );
    // }else{
    return const MaterialApp(
      color: Colors.amber,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
    // }

  }
}
