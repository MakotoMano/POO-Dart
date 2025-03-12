void main() {
  //var aluno = Aluno(); //em dart, é uma boa prática não declara new
  //Quando não é declarado um construtor, é implicitamente
  //montado um contrutor vazio. Ao criar um construtor
  // que recebe parâmetros, o construtor vazio é eliminado

  var aluno = Aluno("João", 21, 9);
  /*
  aluno.nome = "João";
  aluno.idade = 21;
  aluno.nota = 9;
  */
  var aluno2 = Aluno.ganhadorChallenge("marioa", 20);
  aluno.exibirInformacoes();
  aluno2.exibirInformacoes();
}

class Aluno {
  /*
    String nome; //Non-nullable instance field 'nome' must be initialized.
    int idade; // Non-nullable instance field 'nome' must be initialized.
    double nota; // Non-nullable instance field 'nome' must be initialized.
  */
  String? nome; // a interrogação permite que a variável aceite valores nulos
  int? idade;
  double? nota;

/*
  Aluno(String nome, int idade, double nota) {
    Construtor com todas as variáveis
    this.nome = nome;
    this.idade = idade;
    this.nota = nota;
  }
*/

  //Declaração de construtor com sintaxe reduzida
  Aluno(this.nome, this.idade, this.nota);

  //Aluno(this.nome, this.idade);
  // Dart não permite criar sobrecargas de construtores da seguinte forma
  // Para resolver este problema, é necessário criar um construtor nomeado
  Aluno.ganhadorChallenge(this.nome, this.idade) {
    nota = 10;
  }

  void exibirInformacoes() {
    print("Nome do aluno: $nome");
    print("Idade do aluno: $idade");
    print("Nota do aluno: $nota");
  }
}
