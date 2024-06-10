import 'package:app_login_firebase/screens/LoginScreen.dart';
import 'package:app_login_firebase/screens/RegistroScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Fire());
}

class Fire extends StatelessWidget {
  const Fire({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Cuerpo(context),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Cuerpo(context) {
  return (Column(
    children: <Widget>[
      Text("Welcome"),
      BotonLogin(context),
      BotonRegistro(context)
    ],
  ));
}

Widget BotonLogin(context) {
  return (FilledButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      },
      child: Text("Login")));
}

Widget BotonRegistro(context) {
  return (ElevatedButton(
      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Registro()));
      },
      child: Text("Registro")));
}
