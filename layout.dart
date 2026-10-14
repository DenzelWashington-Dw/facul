import 'package:flutter/material.dart';



void main(){ // função principal
  runApp(MinhaClasse()); //executar aplicativo
}

class MinhaClasse extends StatelessWidget {
  //imutável
  const MinhaClasse({super.key});//Construtor

  @override
  Widget build(BuildContext context) {
    //montar a exibição
    /*
      Column: Cria uma única coluna. Os componentes dentro do children serão colocados nessa
      única coluna -> serão empilhados um embaixo do outro
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("teste")
        ,),
        body: Column(
          children: [
            Expanded(
              
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex:1,
                          child: Container(color: Colors.blue,
                            )
                          ),
                        Expanded(
                          child: Container(color: Colors.red,
                            )
                          ),  
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(color: Colors.purple,),
                        ),

                       Expanded(
                        
                        child: Row(
                          children: [
                            Expanded(
                              flex:1,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex:4,
                                    child: Container(color: Colors.amber,
                                      )
                                    ),

                                    Expanded(
                                    
                                    child: Container(color: Colors.green,
                                      )
                                    )
                                ],
                              )
                            ),

                            Expanded(
                              flex:1,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex:2,
                                    child: Container(color: const Color.fromARGB(255, 13, 128, 156),
                                      ) 
                                    ),
                                  Expanded(
                                    child: Container(color: const Color.fromARGB(255, 175, 46, 207),
                                      ) 
                                    ),  
                                ],
                              )
                            )

                            
                          ],
                        )  
                       
                       )
                      ],
                    ),
                    
                  )

                ],
              )

              ),
              Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
              child: Container(
              color:Color.fromARGB(255, 235, 64, 220),
              )),
              Expanded(
              child: Container(
              color:const Color.fromARGB(255, 119, 15, 138),
              ))
                ],
              )),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      
                      child: Container(
                        color:Colors.blue
                      )),
              Expanded(
                child: Container(color: Colors.brown,))
                      
                  ],)
             
              )
          ]
        ),
        /*body: Column(
          children: [
            Expanded(child: Container(color: Colors.amber)),
            Expanded(
              flex:8 ,
              child: Container(color: Colors.red)),
            Expanded(child: Row(
              children: [
                Expanded(
                  child: Container(color: Colors.green,) ,
                  ),
                  Expanded(
                  child: Container(color: Colors.orange,) ,
                  ),
                  Expanded(
                  child: Container(color: Colors.purple,) ,
                  ),
                  ],))*/
/*
           Column(children: [
            Container(
              height: 150,
              color: Colors.amber,
            ),
            Container(
              height:150,
              color: Colors.red
            )
           ]
            
      
        )
          ]
      )*/
    )
     );
    
    
    //Container(
      //color: Colors.amber,
    //);//const Placeholder(); // reserva local('X' enorme)
  }
}