void main(){

  //String primeiraString = "Olá, mundo";
  //int primeiroInt = 10;
  //double primeiroDouble = 45.232;
  bool primeiroBoolean = false;
  
  List<dynamic> primeiraLista = ["jorge", 1, true, 2.4];
  List<String> listaString = ["jorge", "roberto", "paulo"];

  //const String nome = "carlo";
  //final finalInt = primeiroInt;

  if(!primeiroBoolean){
    print(primeiraLista);
    print(listaString[2]);
  }

  Map<String, int> idades = {"João": 24, "Maria": 23, "Jorge": 982};
  for(MapEntry<String, int> entry in idades.entries){
    print("${entry.key} tem ${entry.value}");
  }

  //TODO: estudar keyCollections
}