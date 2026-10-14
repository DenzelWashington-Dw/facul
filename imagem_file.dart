import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';


void main(){
  runApp(Digimon());
}

class Digimon extends StatelessWidget {
  const Digimon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Imagem",
      debugShowCheckedModeBanner: false,
      home: Beyblade(),
    );
  }
}

class Beyblade extends StatefulWidget {
  const Beyblade({super.key});

  @override
  State<Beyblade> createState() => _BeybladeState();
}

class _BeybladeState extends State<Beyblade> {
  File? imagem;
  final selecionador = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagem do arquivo"),
        backgroundColor: Colors.blueGrey,
      ),
      body:Center(
        child:Column(
          children: [
            Padding(
              padding:EdgeInsetsGeometry.all(15),
              child: ElevatedButton(
                onPressed:(){
                  selecionarImagem();
                },
                style: ButtonStyle(
                  backgroundColor:WidgetStatePropertyAll(
                    Colors.green,
                  ),
                ),
                child: Text("Selecionar imagem"), 
              ), 
            ),

            SizedBox(
              height: 300,
              width: 300,
              child: imagem == null 
                ? Center(
                    child: Text("Nenhuma imagem selecionada"),
                  ) 
                : Center(
                    child: kIsWeb//Verifica se está executando navegador
                      ? Image.network(
                          imagem!.path,
                          height: 300,
                          width: 300,
                          errorBuilder:
                            (context, error, stackTrace){
                              return Text(
                                "Erro ao carregar imagem",
                              );
                            }
                      )
                      : Image.file(
                        imagem!,
                        height: 300,
                        width: 300,
                         errorBuilder:
                            (context, error, stackTrace){
                              return Text(
                                "Erro ao carregar imagem",
                              );
                            }
                      )
                ),
                
            ),
            
          ],
        ),
      ),  
    );
  }

  Future selecionarImagem() async{
    try{
      final img = await selecionador.pickImage(
        source: ImageSource.gallery,
      );

      if(img != null){
        setState((){
        imagem = File(img.path);
      });
      }
       
    }catch(e){
      print("$e");
    }
  }
}
