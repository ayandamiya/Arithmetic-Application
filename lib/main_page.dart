import 'package:flutter/material.dart';
import 'package:math_solution/const.dart';
import 'package:math_solution/util/num_key.dart';
import 'package:math_solution/button_exit.dart';
import 'dart:math';
import 'package:math_solution/util/result_answer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

   @override
   State<MainPage> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {

     //number pad list
      List<String> numberPad = [
        '1',
        '2',
        '3',
        'DEL',
        '4',
        '5',
        '6',
        '-',
        '7',
        '8',
        '9',
        '=',
        '0',
        '.',
      ];

 // List<String> operators = ['+', '-', 'x'];
    //user answer
    String userAnswer = '';

    //user tapped a button
   void buttonTapped(String button){
    setState(() {
      if(button == '='){
           //calculate if the answer is correct or incorrect
           checkResults();
    
      }
      else if(button == 'DEL'){
        //userAnswer ='';
        if(userAnswer.isNotEmpty){
           userAnswer = userAnswer.substring(0,userAnswer.length-1);
      } //end else if
      
      }
      else if(userAnswer.length < 3){
              userAnswer += button;
      } //end else if
      
    });

   }

       int operand1 = Random().nextInt(50);
       int operand2 = Random().nextInt(50); 
   //check results of the user answer
   void checkResults(){
      if(operand1 + operand2 == int.parse(userAnswer)){
          showDialog(
            context: context,
             builder: (context){ return ResultMessage(message:'Correct', onTap: goToTheNextQuestion, icon: Icons.arrow_forward);}
             );
               }//endif
              
          else{
                showDialog(
                context: context,
                builder: (context){ return ResultMessage(message:'Try Again!!', onTap: goBackToQuestion, icon: Icons.rotate_left);}
             );
              }
            }
      //create random numbers
         
      //method used to go to the next question
      void goToTheNextQuestion(){
         //dismiss dialog
         Navigator.of(context).pop();
         //reset the answer value 
         setState(() {
          
           userAnswer = '';
           operand1 = Random().nextInt(50);
           operand2 = Random().nextInt(50);      
    
       });

      }
      //go back to the question
      void goBackToQuestion(){
         //dismiss dialog
         Navigator.of(context).pop();
         //reset the answer value
         setState(() {
           userAnswer = '';
         });
      }

           
    @override
    Widget build(BuildContext context) {
     
        return Scaffold(
           backgroundColor:Colors.deepPurple[300],
           body: Column(
              children: [
                Container(
                 height:160,
                 color:Colors.deepPurple, 
                ),
                
            //questions
            Expanded(
              child: Container(
                child:Center(
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                  // ignore: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings
                  Text(operand1.toString() + ' + ' + operand2.toString() + ' = ',
                  style:whiteTextStyle,
                  ), 
                    
                  Container(
                    height:60,
                    width:180,
                    decoration:BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(8),
                    ),
                    child:Center(
                    child:Text(userAnswer,
                    style:whiteTextStyle),
                    ),
                  ),
                  ],
                  ),
                ),
              ),
           
          ),
            
           //number pad
            Expanded(
                flex:6,
                child:GridView.builder(
                   itemCount:14, //numberPad.length,
                   physics:const NeverScrollableScrollPhysics(),
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:4,
                   ),
                   itemBuilder: (context, index) {
                    return MyButton(child:numberPad[index],
                    onTap:() => buttonTapped(numberPad[index]) ,
                    );
                   }, //itemBuilder

            ), 
            ),


            //erase this part
               SizedBox(height:120),
             SizedBox(width:90),
           // button
            ExitButton(text:"EXIT",
            ///go to the next page
            onTap:() {Navigator.pushNamed(context, '/exitPage');},
           )
           ]
               

              )

           );

    }


}