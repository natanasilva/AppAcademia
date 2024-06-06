class ExercicioModelo {
  String id;
  String nome;
  String treino;
  String comoFazer;

  String? urlImage;

  ExercicioModelo({
    required this.id,
    required this.nome,
    required this.treino,
    required this.comoFazer,
  });

  ExercicioModelo.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        nome = map["nome"],
        treino = map["nome"],
        comoFazer = map["comoFazer"],
        urlImage = map["urlImage"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "treino": treino,
      "comoFazer": comoFazer,
      "urlImage": urlImage,
    };
  }
}
