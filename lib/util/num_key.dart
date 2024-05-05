import 'package:flutter/material.dart';
import 'package:math_solution/const.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget { //
  final String child;
  final VoidCallback onTap;
  var buttonColor = Colors.deepPurple;


 MyButton({Key? key,
                 required this.child,
                 required this.onTap,
    }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    if (child == 'DEL'){
      buttonColor = Colors.red;
    }
    else if(child == '-'){
      buttonColor = Colors.green;
    }
    else if(child == '='){
      buttonColor = Colors.green;
    }
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child:GestureDetector(
        onTap:onTap,
      child:Container(
        decoration: BoxDecoration(
          color:buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child:Center(
          child:Text(
            child,
            style:whiteTextStyle) ,)
      )
      
    ,)
    ) 
       ;}
    
  }
