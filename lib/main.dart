import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Joyería El García',
      home: const JoyeriaHome(),
    );
  }
}

class JoyeriaHome extends StatelessWidget {
  const JoyeriaHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos el color guinda para reutilizarlo fácilmente
    const colorGuinda = Color(0xFF800000);

    return Scaffold(
      // --- APPBAR ---
      appBar: AppBar(
        title: const Text(
          'Joyería El García',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: colorGuinda,
        leading: const Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      // --- BODY ---
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta(
            'Juan Pérez',
            'Desarrollador Mobile',
            'https://raw.githubusercontent.com/REGV-0501/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado1.png',
            const Color.fromARGB(255, 0, 0, 0),
          ),
          _crearTarjeta(
            'Sofía García',
            'Diseñadora UX/UI',
            'https://raw.githubusercontent.com/REGV-0501/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado2.png',
            const Color.fromARGB(255, 0, 0, 0),
          ),
          _crearTarjeta(
            'Mariana Torres',
            'Backend Engineer',
            'https://raw.githubusercontent.com/REGV-0501/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado3.png',
            const Color.fromARGB(255, 0, 0, 0),
          ),
        ],
      ),
    );
  }

  // --- MÉTODO HELPER PARA TARJETAS ---
  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen, Color fondo) {
    return Card(
      color: fondo,
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.white),
          onPressed: () {
            // Acción al dar like
          },
        ),
      ),
    );
  }
}