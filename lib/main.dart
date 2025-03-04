import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // Header morado claro con título centrado
            Container(
              width: double.infinity,
              height: 80,
              color: Color(0xFFDAB6FC), // Morado claro
              alignment: Alignment.center,
              child: Text(
                "Khanh's Super Secret App",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40), // Espacio reducido para mejor distribución
            // Texto adicional con nombre y matrícula
            Text(
              'Valentin Loya Mat:22308051281244',
              style: TextStyle(color: Color(0xff1900f9), fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40), // Espacio entre el texto y el contenedor azul
            // Contenedor con botón
            Center(child: MiContainer()),
          ],
        ),
      ),
    );
  }
}

class MiContainer extends StatelessWidget {
  const MiContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Permite que el botón sobresalga
      alignment: Alignment.bottomCenter,
      children: [
        // Caja azul principal
        Container(
          width: 300,
          height: 300,
          color: Color(0xff4499ff), // Azul
        ),
        // Botón sobresaliendo ligeramente y más grande
        Positioned(
          bottom: -16, // Un poco más salido
          child: Container(
            width: 270, // Más ancho que antes
            padding: EdgeInsets.symmetric(vertical: 12), // Más alto
            decoration: BoxDecoration(
              color: Color(0xFF007BFF), // Azul oscuro
              borderRadius: BorderRadius.circular(8), // Bordes más suaves
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "and watch",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18, // Texto más grande
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
