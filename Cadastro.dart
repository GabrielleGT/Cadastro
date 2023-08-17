import 'dart:io';

  List<Map<String, dynamic>> cadastros = [];
main(){

  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");

    while (condicao){
        print("*** Type a comand (Ex: register, print or leave  ) ***");
      String? comando = stdin.readLineSync();
      if (comando == "leave"){
        print("*** Program finalized ***");
        condicao = false;
      } else if(comando == "register"){
        print("\x1B[2J\x1B[0;0H");
        cadastrar();
      } else if(comando == "print"){
        print(cadastros);
      } else {
        print("**** This comand doesn't exist ***");
        print("**** finalized ****");
      }
    }

}

    cadastrar(){

    Map<String, dynamic> cadastro = {};

    print("*** Type your name ***");
  String? nome = stdin.readLineSync();
  cadastro["Nome"] = nome;

    print("*** Type your Age ***");
  String? idade = stdin.readLineSync();
  cadastro["idade"] = idade;

    print("*** The city you live in ***");
  String? cidade = stdin.readLineSync();
  cadastro["cidade"] = cidade;

    print("*** The state of your city  ***");
  String? estado = stdin.readLineSync();
  cadastro["estado"] = estado;

  cadastros.add(cadastro);
    
  }
