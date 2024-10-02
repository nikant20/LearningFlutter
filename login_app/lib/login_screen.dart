import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/png/backbutton.png", height: 15,),
        centerTitle: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/png/login.jpg", height: 200,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20, right: 20),
              child: const Text('Please Login',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20,right: 20,top: 5),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: FilledButton.tonal(

                  onPressed: () {
                    print('centrebutton');
                  },
                  child: const Text('Click Here Please!')),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/png/google.png", width: 35, height: 35, fit: BoxFit.fill,),
                    Image.asset("assets/images/png/linkedin.png", width: 35, height: 35, fit: BoxFit.fill,),
                    Image.asset("assets/images/png/github.png", width: 35, height: 35, fit: BoxFit.fill)
                  ],
                )
            )
          ],
        ),
      ),
      backgroundColor: Colors.orangeAccent,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homepage"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats")
        ],
      ),
    );
  }
}
