import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../modelos/exercicio_modelo.dart';
import '../servicos/autenticacao_servico.dart';

class InicioTela extends StatelessWidget {
  InicioTela({super.key});

  final List<ExercicioModelo> listaExercicios = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Exercícios"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Deslogar"),
              onTap: () {
                AutenticacaoServico().deslogar();
              },
            ),
            ListTile(
              leading: Icon(Icons.web_sharp),
              title: Text("Sobre Nós"),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
