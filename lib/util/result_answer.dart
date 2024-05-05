import 'package:flutter/material.dart';
import 'package:math_solution/const.dart';


class ResultMessage extends StatelessWidget {
  final String message;
  final VoidCallback onTap;
  final icon;
  const ResultMessage({super.key,
                 required this.message,
                 required this.onTap,
                 required this.icon});

   @override
   Widget build(BuildContext context)

      {
            return AlertDialog(
                backgroundColor:Colors.deepPurple,
                content:Container(
                  height:200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                    Text(
                      message,
                      style:whiteTextStyle,),
                    
                    //button to the next question
                    GestureDetector(
                      onTap: onTap,
                      child:Container(
                      decoration:const BoxDecoration(color:Color.fromARGB(255, 179, 147, 233)),
                        child: Icon(
                         icon,
                        color:Colors.white,)

                  )
                  )
                  
                      
                    ]
                    ,)
                )

              );
      }
}