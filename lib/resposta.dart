import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class Resposta extends StatelessWidget{
  final void Function() onSelecao;
   final String resposta;
  Resposta(this.resposta,this.onSelecao);
  @override
  Widget build(BuildContext context) {
   

    return Container(
      margin: EdgeInsets.all(10),
        width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
          backgroundColor: Colors.blue,        
          padding: const EdgeInsets.all(16.0),        
                
        ),      
        onPressed: onSelecao,
        child:Text(resposta,
         style:const TextStyle(fontSize: 18,color: Colors.white),
         textAlign: TextAlign.center
        ),
        ),
    );
    
  }

}