//Introdução à linguagem dart


//Comentário
/*
  Comentério
  de
  múltiplas
  linhas
*/
/*
  'arquivo executável =>enxtensão .dart
  função principal => void main(){}
  variáveis tipadas -> definir o tipo na criação da variável
                      tipo nome_da_variável
 */

void main(){
  //tipo inteiro -> int

  int num1;
  int num2 = 2;
  //tipo número real -> double
  double preco = 1.50;
  //palavra -> String;
  String nome = "João";
  //booleano -> bool
  bool ok = false;
  //lista -> List<>
  List<String> clientes = ["Ana", "Maria", "Pedro"];
  List teste = [1, "teste"];
  print(num2);
  print(preco);
  print(nome);
  print(ok);
  print(clientes);
  print(teste);
// executar pelo terminal -> flutter run -t lib\introducao.dart
// Set -> lista cujo o valor não pode ser duplicado
Set<int> lista02 = {1,2,3};
//Map -> lista de itens no formato "nome: valor"
Map<String, String> m = {"nome": "João", "idade": "15"};
//var -> o tipo da variável será definido na primeira atribuição
//indefinido até colocar o primeiro valor

var item;
item = true;
print(item);
item = 67;
//dynamic -> variável não tipada
dynamic valor;
valor = 6.9;
valor="Aura";
print(valor);
//Operadores aritméricos + -  * / % =
//operadores lógicos > < >= <= == != || && !
bool a = 1 == 2 || 2 > 3;

 //loop

 int j = 0;
 while(j<10){

 }
 do{

 }while(j<10);
//loop contada
for(int i = 0; i < 10; i++){
  List<int> lista03 = [4,6,2,10,35,100];
  for(var num3 in lista03){}
  /*o for da linha de cima faz a mesma coisa que:
  
  for(var i = 0; i < lista03.length; i++){
  var num3 = lista03[i];
  }*/
}

if(num2 > 3){

}

if(num2 > 3){

}else{

}

//condição ? se verdadeiro : se falso;

int num5 = num2>3 ? num2 : 3;

//switch-case(só compara operação de igualdade)
switch(item){
  case 2:
    break;
  case 3:
    break;
  default:  
  
}

//função
//tipo_de_retorno nome_da_função(parâmetros){}
//parâmetros tipo nome_do_parâmetro

int soma(int a, int b){
  return a + b;
}

//void não retorna nada
void imprimir(var valor){
  //String com $nome_da_variável utiliza o conteúdo da variável
  print("Valor: $valor");
}

}
