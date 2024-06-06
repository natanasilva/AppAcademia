import 'package:eu_fitness/_comum/inicio_modal.dart';
import 'package:eu_fitness/telas/exercicio_tela.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../modelos/exercicio_modelo.dart';
import '../servicos/autenticacao_servico.dart';

class InicioTela extends StatefulWidget {
  final User user;

  const InicioTela({super.key, required this.user});

  @override
  State<InicioTela> createState() => _InicioTelaState();
}

class _InicioTelaState extends State<InicioTela> {
  final List<ExercicioModelo> listaExercicios = [
    ExercicioModelo(
        id: "EX01",
        nome: "Puxada Alta",
        treino: "Treino A",
        comoFazer: "Puxe alto"),
    ExercicioModelo(
        id: "EX01",
        nome: "Puxada Alta",
        treino: "Treino B",
        comoFazer: "Puxe baixo"),
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
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/logo_redondo.png"),
              ),
              accountName: Text((widget.user.displayName != null)
                  ? widget.user.displayName!
                  : ""),
              accountEmail: Text(widget.user.email!),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Sobre Nós"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Deslogar"),
              onTap: () {
                AutenticacaoServico().deslogar();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          mostraModalInicio(context);
        },
      ),
      body: ListView(
        children: List.generate(
          listaExercicios.length,
          (index) {
            ExercicioModelo exercicioModelo = listaExercicios[index];
            return ListTile(
              title: Text(exercicioModelo.nome),
              subtitle: Text(exercicioModelo.treino),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ExercicioTela(exercicioModelo: exercicioModelo),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
