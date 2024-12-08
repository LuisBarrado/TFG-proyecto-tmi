import 'package:flutter/material.dart';
import 'package:proyecto_tmi/paginas/Principal.dart';

void main() => runApp(const TMIApp());

class TMIApp extends StatelessWidget {
  
  const TMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TMI",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(context),
    );
  }
}


Widget cuerpo(BuildContext context) {
  return Container(
    decoration:const BoxDecoration(
      image: const DecorationImage(
        image: NetworkImage(
          "https://st2.depositphotos.com/1175677/12327/v/450/depositphotos_123277816-stock-illustration-black-wood-background-wallpaper-backdrop.jpg",
        ),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          campoUsuario(),
          campoContrasena(),
          const SizedBox(height: 12),
          botonAcceder(context),
          // ElevatedButton(
          //   child: Text("Acceder"),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Principal()),
          //     );
          //   },
          // ),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "Iniciar sesión",
    style: TextStyle(color: Colors.white, fontSize: 25.0),
  );
}

Widget campoUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonAcceder(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.amber,
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
    ),
    onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Principal()),
              );
            },
    child: Text(
      "Acceder",
      style: TextStyle(fontSize: 15, color: Colors.black),
    ),
  );
}
