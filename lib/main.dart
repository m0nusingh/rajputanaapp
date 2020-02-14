import 'dart:async';

import 'package:flutter/material.dart';

import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
           fontFamily: 'Raleway',
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


_hello(){



Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
}

  @override
  Widget build(BuildContext context) {
   

   Timer(Duration(seconds: 5), () {
  print("Yeah, this line is printed after 5 seconds");
  _hello();
});


    return Scaffold(
      body: Center(
         child: Image.asset('assets/images/start.gif'),
       
      ),
     
    );
  }
}
