import 'package:eu_fitness/_comum/minhas_cores.dart';
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
  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController treinoCtrl = TextEditingController();
  TextEditingController anotacoesCtrl = TextEditingController();
  TextEditingController sentindoCtrl = TextEditingController();

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
            Row(
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
            const Column(),
            ElevatedButton(onPressed: () {}, child: Text("Criar Exercicio"))
          ],
        ),
      ),
    );
  }
}
