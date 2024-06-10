import 'package:app_login_firebase/screens/ProductosScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

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
        title: const Text('Login'),
      ),
      body: Cuerpo(context),
    );
  }
}

Widget Cuerpo(context) {
  return (Column(
    children: <Widget>[
      Text("Ingrese sus credenciles"),
      CorreoField(),
      ContraseniaField(),
      BotonLogin(context)
    ],
  ));
}

final TextEditingController _correoController = TextEditingController();

Widget CorreoField() {
  return TextFormField(
    controller: _correoController,
    decoration: const InputDecoration(
      hintText: 'Ingrese el correo electronico',
      fillColor: Colors.white,
      filled: true,
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese el correo electronico';
      }
      return null;
    },
  );
}

final TextEditingController _contraseniaController = TextEditingController();

Widget ContraseniaField() {
  return TextFormField(
    controller: _contraseniaController,
    decoration: const InputDecoration(
      hintText: 'Ingrese la contraseña',
      fillColor: Colors.white,
      filled: true,
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese la contraseña';
      }
      return null;
    },
  );
}

Widget BotonLogin(context) {
  return (FilledButton(
      style: ButtonStyle(
          backgroundColor:
              WidgetStatePropertyAll(Color.fromARGB(255, 35, 150, 0))),
      onPressed: () {
       login(context);
      },
      child: Text("Iniciar Sesion")));
}

Future<void> login(context) async {
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _correoController.text,
    password: _contraseniaController.text,
  );
  Navigator.push(
            context, MaterialPageRoute(builder: (context) => Productos()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
}