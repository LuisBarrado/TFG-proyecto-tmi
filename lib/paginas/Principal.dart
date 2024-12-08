import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.only(top: 20, bottom: 5),
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/thumbnails/012/986/755/small_2x/abstract-circle-logo-icon-free-png.png",
                ),
              ),
              Text(
                "Usuario",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.green[100],
                child: Text("Inicio"),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.lightGreen[100],
                child: Text("Opciones"),
              ),
              Expanded(child: Container()),
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                color: Colors.greenAccent[100],
                alignment: Alignment.center,
                child: Text("Salir"),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff25D366),
        title: const Text("TMI"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://st2.depositphotos.com/1175677/12327/v/450/depositphotos_123277816-stock-illustration-black-wood-background-wallpaper-backdrop.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Bienvenido Usuario, está aplicación actualmente está en desarrollo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
