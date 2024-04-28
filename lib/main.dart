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
  final _perguntas = const[
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
  void _responder(){
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
      
           
    
    
  }
  bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
  }
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada].cast()['resposta'] : [];
    return  MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Center(child: Text("Perguntas")),
          backgroundColor: Colors.blueAccent,          
          titleTextStyle:const TextStyle(
            color: Colors.white),
        ),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((texto)=>Resposta(texto,_responder))
          ],
        ) : null,
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