import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto/pages/read.dart';

class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  @override
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmacioncontroller = TextEditingController();
  String email;
  String password;
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirmacioncontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
      body: _registroForm(),
    );
  }

  void authUser(
    String email,
    String password,
  ) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDykEaIid9EdjeK5oIBeG8sM-h2c56JooE');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);

      if (response.statusCode == 200) {
        print("oklogin");
        Navigator.popAndPushNamed(context, 'login_page');
      }
      if (response.statusCode == 400) {
        _pop();
      }
    } catch (error) {
      print(error.toString());
    }
  }

  void _pop() {}

  void _getValues() {
    setState(() {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      print(email);
      print(password);
      if (validatarPass(
              _passwordcontroller.text, _confirmacioncontroller.text) ==
          true) {
        authUser(email, password);
        print("ok2");
        Navigator.popAndPushNamed(context, 'login_page');
      }
    });
  }

  bool validatarPass(String password, confirmation) {
    if (password == confirmation) {
      return true;
    } else {
      return false;
    }
  }

  Widget _registroForm() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      children: [
        Text("Correo"),
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: _emailcontroller,
        ),
        Text("Contraseña"),
        TextField(
          obscureText: true,
          controller: _passwordcontroller,
        ),
        Text("Confirma tu contraseña"),
        TextField(
          obscureText: true,
          controller: _confirmacioncontroller,
        ),
        ElevatedButton(onPressed: _getValues, child: Text("Registro"))
      ],
    );
  }
}
