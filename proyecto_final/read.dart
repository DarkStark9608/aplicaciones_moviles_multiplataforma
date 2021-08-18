import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto/pages/registro.dart';

class ReadPage extends StatefulWidget {
  ReadPage({Key key}) : super(key: key);

  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {
  List<String> results = [];
  bool reading = true;

  Future<void> readData() async {
    try {
      var url = Uri.parse(
          "https://rugged-cooler-303905-default-rtdb.firebaseio.com/Agenda.json");
      var response = await http.get(url);
      var data = json.decode(response.body);

      results.clear();
      data.forEach((key, value) {
        results.add(value["nombre"]);
        results.add(value["email"]);
      });
      setState(() {
        reading = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    super.initState();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read'),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: results.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(results[index]),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.popAndPushNamed(context, 'write_page');
          },
          label: Text("Insertar")),
      
      
    );
  }
}
