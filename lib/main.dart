import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizz/questao.dart';
import 'package:quizz/resposta.dart';
import './questao.dart';

main(){
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  void _responder(){
    setState(() {
      if(_perguntaSelecionada == 2 ){
        _perguntaSelecionada=0;
      }else{
        _perguntaSelecionada++; 
      }
           
    });
    
  }
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto':'Qual a sua cor favorita ?',
        'resposta':['azul','verde','amarelo','vermelho']
      },
      {
        'texto':'Qual o seu  animal favorito ?',
        'resposta':['cachorro','gato','passarinho','tartaruga']
      },
      {
        'texto':'Qual a sua comida favorita ?',
        'resposta':['lasanha','hamburguer','pizza','coxinha']
      },
      
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
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            Resposta("ok",_responder),
             Resposta("ok",_responder),
            
          ],
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }  

}