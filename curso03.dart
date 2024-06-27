void main(){
  // escolherMeioTransporte(Transporte.carro);
  
  // Set<String> registrosVisitados = <String>{};
  // registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  // print(registrosVisitados.isNotEmpty);

  Map<String, dynamic> registrarPrecos = {};
  registrarPrecos ["São Paulo"] = 1200;
  registrarPrecos ["Rio de Janeiro"] = 1500;
  registrarPrecos ["São Paulo"] = 1900;
  registrarPrecos.remove("São Paulo");
  registrarPrecos ["New York"] = "Muito caro";
  print(registrarPrecos);
}

Set<String> registrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao){
  switch(locomocao){
    case Transporte.carro: 
      print("vou de carro");
      break;
    case Transporte.bike:
      print("vou de bike");
      break;
    case Transporte.skate:
      print("vou de skate");
      break;
    case Transporte.aviao:
      print("vou de aviao");
      break;
    default:
      print("Vou de qualquer coisa");
  }
}

enum Transporte{
  carro,
  bike,
  skate,
  aviao
}