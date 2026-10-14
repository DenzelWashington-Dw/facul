import 'package:flutter/material.dart';

void main(){
  runApp(Testosterona());
}

class Testosterona extends StatelessWidget {
  const Testosterona({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"GestureAula",
      debugShowCheckedModeBanner: false,
      home: Balao(),
    );
  }
}

class Balao extends StatelessWidget {
  const Balao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        
        
        child: GestureDetector(
          onTap: (){
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs3yUsU_bD5KPtVIz1junQ70vxSSjlM4w99o8Gm2ndbg&s=10",cacheHeight: 200,),
                  behavior: SnackBarBehavior.floating,
                  action: SnackBarAction(
                      label: "X",
                      textColor: Colors.red, 
                      onPressed:(){

                      }, 
                    ),
                  duration: Duration(seconds:3),

                ),              
            );
            
          },
          onLongPress:(){},
          
          child: Container(
            width: 150,
            height: 150,
            color: Colors.green,
            child: Center(
              child: Text(
                "Clique aqui",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}