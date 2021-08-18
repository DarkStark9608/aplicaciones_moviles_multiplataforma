import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:proyecto/pages/read.dart';

class WritePage extends StatefulWidget {
  WritePage({Key key}) : super(key: key);

  @override
  _WritePageState createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final _nombrecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  void dispose() {
    _emailcontroller.dispose();
    _nombrecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Write Page"),
      ),
      body: _writeForm(),
    );
  }

  Widget _writeForm() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Text("Nombre"),
        TextField(
          keyboardType: TextInputType.name,
          controller: _nombrecontroller,
        ),
        Text("Email"),
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailcontroller,
        ),
        ElevatedButton(onPressed: _getData, child: Text("Insertar"))
      ],
    );
  }

  void _getData() {
    setState(() {
      _postData(_nombrecontroller.text, _emailcontroller.text);
    });
  }

  void _postData(String nombre, String email) async {
    try {
      var url = Uri.parse(
          'https://rugged-cooler-303905-default-rtdb.firebaseio.com/Agenda.json');
      var data = {'nombre': nombre, 'email': email};
      final response = await http.post(url, body: json.encode(data));
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'read_page');
      }
    } catch (error) {
      print(error.toString());
    }
  }
}
