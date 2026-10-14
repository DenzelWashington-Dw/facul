

import 'package:flutter/material.dart';

void main(){
  runApp(Aula());
}

class Teste extends StatelessWidget{
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controlador = TextEditingController();
    final TextEditingController controlador1 = TextEditingController();
    final TextEditingController controlador2 = TextEditingController();
    final TextEditingController controlador3 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Campo de Texto"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.all(15.0),
            child: TextField(
              controller: controlador,

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Preço do etanol",
                
                icon: Icon(Icons.numbers),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:const Color.fromARGB(255, 58, 62, 253),
                fontStyle: FontStyle.italic
              ),
            ), 
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(15.0),
            child: TextField(
              controller: controlador1,

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Preço da gasolina",
                icon: Icon(Icons.numbers),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:const Color.fromARGB(255, 58, 62, 253),
                fontStyle: FontStyle.italic
              ),
            ), 
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(15.0),
            child: TextField(
              controller: controlador2,

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Rendimento etanol",
                icon: Icon(Icons.numbers),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:const Color.fromARGB(255, 58, 62, 253),
                fontStyle: FontStyle.italic
              ),
            ), 
          ),
          Padding(
            padding: const EdgeInsetsDirectional.all(15.0),
            child: TextField(
              controller: controlador3,

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Rendimento gasolina",
                icon: Icon(Icons.numbers),
              ),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:const Color.fromARGB(255, 58, 62, 253),
                fontStyle: FontStyle.italic
              ),
            ), 
          ),
          TextButton(
            onPressed: (){
                // todo o calculo aqui
                // res = ...
                double gasosa;
                double alcool;
                double rg = double.parse(controlador1.text);
                double re = double.parse(controlador.text);

                gasosa = double.parse(controlador3.text);
                alcool = double.parse(controlador2.text); 

                double res = rg * gasosa;
                double res2 = re * alcool; 

                String resultado;
                if (res > res2) {
                    resultado = "Compensa abastecer com etanol";
                } else {
                    resultado = "Compensa abastecer com gasolina";
                }



              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(resultado),
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                    label: "fechar",
                    textColor: Colors.black, 
                    onPressed: (){}
                  ), 
                ),
              );
            },

            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.red,
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            child: Text("Clique aqui"),
          )
        ],
      ),
    );

  }
}

class Aula extends StatelessWidget{
  const Aula({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controlador = TextEditingController();
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Campo de texto",
      home: Teste(),
    );
    
  }
}

