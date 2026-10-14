import 'package:flutter/material.dart';


void main(){
  runApp(Aula());
}

class Teste extends StatelessWidget{
  const Teste({super.key});
  
  @override
  Widget build(BuildContext context) {
    /*
      Observação: tem de criar um controlador para cada
      campo de texto. Caso coloque o mesmo controlador
      em dois campos de texto, o que fizer em  um será
      replicado no outro
    */
    final TextEditingController controlador = TextEditingController();

    String texto = controlador.text;

    if(controlador.text.isEmpty){
      texto = "Digite alguma coisa...";
      
    }else if(!texto.contains("@")){
      texto = "Digite um email válido!!!";
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Campo de Texto"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Column(
          children: 
        //Campo de texto
        [
          

          
          Padding(
            padding: const EdgeInsetsDirectional.all(15.0),
            child: TextField(
            //Item necessário para saber o que está acontecendo
            controller: controlador,
            textAlign: TextAlign.end,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              icon: Icon(Icons.email),
            ),
            style: TextStyle(
              //estilo do texto
              //negrito
              fontWeight: FontWeight.bold,
              //tamanho
              fontSize: 20,
              //cor
              color: const Color.fromARGB(255, 58, 62, 253),
              //itálico
              fontStyle: FontStyle.italic
            ),
            ),
          ),
          TextButton(
            //o que acontece quando for pressionado
            onPressed: (){
              //vou criar um pop-up para mostrar o conteúdo
              //Mas para isso, o MaterialApp e Scaffold
              //precisam estar em classes diferentes
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(controlador.text),
                  
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: "fechar",
                    textColor: Colors.black, 
                    onPressed:(){} 
                    ),
                  ),
                );
            }, 
            
            style: TextButton.styleFrom(
              //cor do botão
              backgroundColor: Colors.green,
              //cor do contúdo do botão
              foregroundColor: Colors.red,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            child: Text("Clique aqui"),

          )


        ],),
      );
    
  }
}

class Aula extends StatelessWidget{
  const Aula({super.key});

  
  



  @override
  Widget build(BuildContext context){
    TextEditingController controlador = TextEditingController();
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Campo de texto",
      home: Teste()
    );
  
  }
  

}