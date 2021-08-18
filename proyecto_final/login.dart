import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('LOGIN'),
        ),
        body: _loginForm(),
      ),
    );
  }

  Widget _loginForm() {
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
        ElevatedButton(onPressed: _getValues, child: Text("Login")),
        SizedBox(height: 60),
        FloatingActionButton.extended(
            label: Text('Registro'),
            icon: Icon(Icons.login, color: Theme.of(context).primaryColor),
            onPressed: () {
              Navigator.pushNamed(context, 'registro_page');
            }),
      ],
    );
  }

  void _alerta() {}

  void _getValues() {
    setState(() {
      email = _emailcontroller.text;
      password = _passwordcontroller.text;
      authUser(email, password);
      print(email);
      print(password);
      
    });
  }

  void authUser(
    String email,
    String password,
  ) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDykEaIid9EdjeK5oIBeG8sM-h2c56JooE');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'read_page');
        print("ok3");
      }
      if (response.statusCode == 400) {
        _alerta();
      }
    } catch (error) {
      print(error.toString());
    }
  }
}
