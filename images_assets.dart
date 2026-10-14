import 'package:flutter/material.dart';

void main() {
  runApp(Pokemon());
}

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children[
        Center(
          child:Image.asset(
            "imagens/images.jpg",
          
              height: 250,
              width: 250,
          ),
          
        ),  
      ],  
          
        

      
    );
  }
}
