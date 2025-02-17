class Planeta {
  int? id;
  String nome;
  double tamanho;
  double distancia;
  String? apelido;

  Planeta({
    this.id,
    required this.nome,
    required this.tamanho,
    required this.distancia,
    this.apelido,
  });

  Planeta.vazio()
    :nome = '',
    tamanho = 0.0,
    distancia = 0.0,
    apelido = '';

factory Planeta.fromMap(Map<String, dynamic> map) {
    return Planeta(
      id: map['id'],
      nome: map['nome'],
      tamanho: map['tamanho'],
      distancia: map['distancia'],
      apelido: map['apelido'],
    );
  }



    Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'tamanho': tamanho,
      'distancia': distancia,
      'apelido': apelido,
    };
  }
}