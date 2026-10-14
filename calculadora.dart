

import 'package:flutter/material.dart';


void main(){
  runApp(Calculadora());
}

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
 double? valor1;
 String operador = "";

  @override
  Widget build(BuildContext context) {
    final TextEditingController controladorResult = TextEditingController(text: "");
    final TextEditingController controladorTexto = TextEditingController(text: "");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  AppBar(
          title: Text('Calculadora', style: TextStyle(fontSize: 20, fontWeight: FontWeight(700),),),
          backgroundColor: Colors.blue,
        ),

        body: Container(
          color: Colors.amber,
          child: Column(
            
            children: [
              
              Container(
                
                color: Colors.white,
                child: TextField(
                  enabled: false,
                  controller: controladorResult,
                  style: TextStyle(backgroundColor: Colors.brown),
                  
                ),
              ),

              Container(
                color: Colors.black,
                child: TextField(
                 
                style: TextStyle(color: Colors.white),
                enabled: false,
                controller:controladorTexto,
                
                  
                  
                  
                  
                ),
              ),

              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.clear();
                                
                              }, 
                              child: Text('C',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '7';
                                

                              }, 
                              child: Text('7',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '4';
                              }, 
                              child: Text('4',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '1';
                              }, 
                              child: Text('1',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                
                    Expanded(
                      child: Column(
                        children: [
                          
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '8';
                              }, 
                              child: Text('8',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                               controladorTexto.text += '5';
                              }, 
                              child: Text('5',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '2';
                              }, 
                              child: Text('2',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '0';
                              }, 
                              child: Text('0',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        children: [
                          
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '9';
                              }, 
                              child: Text('9',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '6';
                              }, 
                              child: Text('6',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                if (controladorTexto.text.contains("*") || controladorTexto.text.contains("-")|| controladorTexto.text.contains("/")|| controladorTexto.text.contains("+")) {
                                 
                                  operador = controladorTexto.text;
                                  controladorTexto.text = "3"; 
                                } else {
                                  controladorTexto.text += '3';
                                }
                                
                              }, 
                              child: Text('3',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '.';
                              }, 
                              child: Text('.',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                if (valor1 == null) {
                                  valor1 = double.tryParse(controladorTexto.text);
                                  controladorResult.text = controladorTexto.text;
                                  controladorTexto.text = '/';
                                } else {
                                  if (operador == "") {
                                    controladorTexto.text = '/';
                                  } else {
                                    double resultado = calcular();
                                    valor1 = resultado;
                                    controladorResult.text = resultado.toString();
                                    operador = "";
                                    controladorTexto.text = '/';
                                  }
                                }
                                controladorTexto.text += '/';
                              }, 
                              child: Text('/',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                if(controladorTexto == "x"){
                                  valor1 = controladorTexto.text;
                                }
                              }, 
                              child: Text('x',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '-';
                              }, 
                              child: Text('-',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                controladorTexto.text += '+';
                                
                              }, 
                              child: Text('+',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: (){
                                //controladorTexto.text += '=';
                                if(controladorTexto.text == "="){
                                  double x = double.tryParse(controladorTexto.text)??0;
                                  double y = double.tryParse(controladorTexto.text)??0;
                                  double soma = x + y;
                                  print(soma);
                                  //controladorResult.text = soma.toString();
                                  
                                }
                                
                              }, 
                              child: Text('=',style: TextStyle(fontSize: 50),),
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),

                    
                    
                    
                    
                  
                
              


            ],
          ),
        ),
        

        
      ),

      
    );
  }
}

