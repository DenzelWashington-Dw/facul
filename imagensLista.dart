import 'package:flutter/material.dart';

void main(){
  runApp(Images());
}

class Images extends StatefulWidget {
  const Images({super.key});
  
  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  final TextEditingController controller = TextEditingController();
  String url ='';
  List<String> imagens=[];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: ListView(
          children: [
              TextField(
                controller: controller,
              ),
            

            ElevatedButton(
            onPressed: (){
              url = controller.text;
              setState(() { 
                imagens.add(url);  
              });
              
            }, 
            child: Text("adicionar imagem"),
            ),
            Container(
              height: 600,
              child: ListView.builder(itemCount: imagens.length, itemBuilder: (context,index){
                return Image.network(imagens[index],height: 200, width: 200,);
               } ),)
           
          ],
        ),
      ),
    );
  }  
}