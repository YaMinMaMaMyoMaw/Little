import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDD8C3),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            // const Spacer(),
             Image.asset("assets/images/holdingGreenPlant.jpg",
             height: 250,
             width: double.infinity,
             ),
             SizedBox(height: 30,),
             Text("Welcome to our little Oasis",
             style: Theme.of(context).textTheme.bodyText1!.
             copyWith(fontWeight: FontWeight.w500,
             fontSize: 30,
             ),
             ),
             const SizedBox(height: 50,),
              const TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.security, color: Colors.black,),
                hintText: "Username",
                // border: OutlineInputBorder(),
                ),
             ),
             SizedBox(height: 20,),
             const TextField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.person,color: Colors.blueGrey,),
                hintText: "Password",
                
                // border: OutlineInputBorder(),
                ),
             ),
             SizedBox(height: 40,),
             ElevatedButton(
              
              onPressed: (){
              Navigator.pushNamed(context, '/main_screen');
             }, 
             child: const Padding(
               padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 40),
               child:  Text("Log in",
               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
             ),)
          ],
        ),
      ),
    );
  }
}