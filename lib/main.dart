import 'dart:html';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.purpleAccent,
          ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffix: Icon(Icons.email),
                    hintText: "Email")
                ),
              ),

               SizedBox(height: 30,),
               Container(
                child: TextField(
                  decoration: InputDecoration(
                     suffix: Icon(Icons.lock),
                     hintText: "Password",
                  ),
                 
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 400,
                height: 50,
                color: Colors.purpleAccent,
                child: ElevatedButton(onPressed: (){}, child: Text("Login"),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent))
                ) ,
                )
            ],
          ),
        )
        )
    );
  }
}