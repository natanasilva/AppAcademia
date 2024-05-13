import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puxada ALta Pronada - Treino A"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("floatingActionButton Foi clicado");
        },
        child: Icon(Icons.add),
      ),
      body: ElevatedButton(
        onPressed: () {},
        child: Text("Enviar Foto"),
      ),
    );
  }
}
