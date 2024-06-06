import 'package:eu_fitness/_comum/minhas_cores.dart';
import 'package:eu_fitness/componentes/decoracao_campo_autenticacao.dart';
import 'package:flutter/material.dart';

mostraModalInicio(BuildContext context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: MinhasCores.azulEscuro,
      isDismissible: false,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      builder: (context) {
        return const ExercicioModal();
      });
}

class ExercicioModal extends StatefulWidget {
  const ExercicioModal({super.key});

  @override
  State<ExercicioModal> createState() => _ExercicioModalState();
}

class _ExercicioModalState extends State<ExercicioModal> {
  TextEditingController _nomeCtrl = TextEditingController();
  TextEditingController _treinoCtrl = TextEditingController();
  TextEditingController _anotacoesCtrl = TextEditingController();
  TextEditingController _sentindoCtrl = TextEditingController();

  bool isCarregando = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Adicionar Exercicio",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _nomeCtrl,
                      decoration: getAuthenticationDecoration(
                        "Qual o nome do exercicio?",
                        icon: const Icon(
                          Icons.abc,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _treinoCtrl,
                      decoration: getAuthenticationDecoration(
                        "A qual treino pertence?",
                        icon: const Icon(
                          Icons.list_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _anotacoesCtrl,
                      decoration: getAuthenticationDecoration(
                        "Qual as suas anotações?",
                        icon: const Icon(
                          Icons.note_add_rounded,
                          color: Colors.white,
                        ),
                      ),
                      maxLines: null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _sentindoCtrl,
                      decoration: getAuthenticationDecoration(
                        "O que você está sentindo?",
                        icon: const Icon(
                          Icons.emoji_emotions_rounded,
                          color: Colors.white,
                        ),
                      ),
                      maxLines: null,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: (isCarregando)
                  ? const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                        color: MinhasCores.azulEscuro,
                      ),
                    )
                  : const Text("Criar Exercício"),
            ),
          ],
        ),
      ),
    );
  }
}
