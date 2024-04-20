import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final  perguntas = [
      'Qual e a sua cor favorita ?',
      'Qual e o seu animal favorito ?'
    ];
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Center(child: Text("Perguntas")),
          backgroundColor: Colors.blueAccent,          
          titleTextStyle:const TextStyle(
            color: Colors.white),
        ),
        body:Column(
          children: [
            Text(perguntas[0]),
            TextButton(onPressed:()=>{print("ok")}, child: Text("Resposta 1")),
            TextButton(onPressed:()=>{print("ok")}, child: Text("Resposta 2")),
            TextButton(onPressed:()=>{print("ok")}, child: Text("Resposta 3")),
          ],
        ),
      ),
    );
  }

}