import 'package:flutter/material.dart';

void main(){
    runApp(Vasco());
    //runApp(Bakugan());
}

class Bakugan extends StatelessWidget {
  const Bakugan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "List View",
        home: Scaffold(
            
            appBar: AppBar(
                
                title: Text("List View"),
                backgroundColor: Colors.blueGrey,
                
            ),
            body: ListView(
                //scrollDirection: Axis.horizontal,
                children: [
                    Container(
                        color: Colors.black,
                        height: 200,
                        width: 200,
                    ),

                    Container(
                        color: Colors.red,
                        height: 200,
                        width: 200,
                    ),
                    Container(
                        color: Colors.amber,
                        height: 500,
                        width: 200,
                    ),
                ],
            ),


        ),
      
    );
  }
}

class Vasco extends StatelessWidget {
   Vasco({super.key});

    List<String> lista = [
    "balão",
    "aura",
    "67",
    "49",
    "tung-tung-tung sahur",
    "CLT",
  ];

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        title: "List View Builder",
        home: Scaffold(
            appBar: AppBar(
                title: Text("List View Builder"),
                backgroundColor: Colors.deepPurple,
            ),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                
                ),//ListView.builder(
                itemBuilder: criarItens,
                itemCount: lista.length,
            ),

        ),
    );
  }

  Widget criarItens(BuildContext context, int indice){
    return SizedBox(
        width: 200,
        height: 200,
        child: ListTile(
            leading: Icon(Icons.ad_units),
            title: Text(lista[indice]),
            subtitle: Text("R\$67,00"),
        ),
    );
  }



}

//child: Text(lista[indice], style: TextStyle(fontSize: 25)),