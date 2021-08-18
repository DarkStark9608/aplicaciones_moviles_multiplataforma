import 'package:flutter/material.dart';
import 'package:proyecto/pages/login.dart';
import 'package:proyecto/pages/read.dart';
import 'package:proyecto/pages/registro.dart';
import 'package:proyecto/pages/write.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          ),
      initialRoute: 'login_page',
      
      routes: {
        
        'login_page': (BuildContext context) => LoginPage(),
        'registro_page':(BuildContext context)=> RegistroPage(),
        'read_page':(BuildContext context)=> ReadPage(),
        'write_page':(BuildContext context)=> WritePage(),
      },
    );
  }
}



