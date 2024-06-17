import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eu_fitness/modelos/exercicio_modelo.dart';
import 'package:eu_fitness/modelos/sentimento_modelo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ExercicioServico {
  String userId;
  ExercicioServico() : userId = FirebaseAuth.instance.currentUser!.uid;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> adicionarExercicio(ExercicioModelo exercicioModelo) async {
    return await _firestore
        .collection(userId)
        .doc(exercicioModelo.id)
        .set(exercicioModelo.toMap());
  }
  Future<void> adicionarSentimento(String idExercicio, SentimentoModelo sentimentoModelo) async {
    
  }
}
