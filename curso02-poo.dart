void main(){
  Fruta fruta1 = Fruta("Laranja", 50.5, "Amarela", "Azedo", 20);
  print(fruta1.nome);
  fruta1.estaMadura(40);

  Carro carro1 = Carro("Ford", "Ka", "Rosa", 4);

  carro1.ligar();
  carro1.acelerar();
}

class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDeColheita;
  bool? isMadura;
  
  Fruta(this.nome,
  this.peso,
  this.cor,
  this.sabor,
  this.diasDeColheita,
  {this.isMadura});

  estaMadura(int diasParaMadurar){
    isMadura = diasDeColheita >= diasParaMadurar;
    print("A $nome esta madura?: $isMadura");
  }

}

class Veiculo implements dirigir{
  String modelo;
  String cor;
  int quantidadeDeRodas;

  Veiculo( this.modelo, this.cor, this.quantidadeDeRodas);

  ligar(){
    print("$modelo está ligado! Vrum Vrum!");
  }
  
  @override
  acelerar() {
    print("Acelerando!!!!!");
  }
}

class Carro extends Veiculo{
  String marca;
  Carro(this.marca, String modelo, String cor, int quantidadeDeRodas) : super( modelo, cor, quantidadeDeRodas);

  @override
  ligar() {
    print("O Carro $marca $modelo esta ligado! Vrum Vrum");
  }
}

abstract class dirigir{
  acelerar(){
    print("Acelerando!");
  }
}

