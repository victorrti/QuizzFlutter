import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;
  void responder(int tamanhoPerguntas){
    setState(() {
      if(perguntaSelecionada == tamanhoPerguntas ){
        perguntaSelecionada=0;
      }else{
        perguntaSelecionada++; 
      }
           
    });
    print(perguntaSelecionada);
  }
  Widget build(BuildContext context) {
    final  perguntas = [
      'Qual e a sua cor favorita ?',
      'Qual e o seu animal favorito ?',
      'Qual e o sua comida favorita ?'
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
            Text(perguntas[perguntaSelecionada]),
            TextButton(onPressed:()=>{responder(perguntas.length-1)}, child: Text("Resposta 1")),
            TextButton(onPressed:()=>{responder(perguntas.length-1)}, child: Text("Resposta 2")),
            TextButton(onPressed:()=>{responder(perguntas.length-1)}, child: Text("Resposta 3")),
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget{
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }  

}