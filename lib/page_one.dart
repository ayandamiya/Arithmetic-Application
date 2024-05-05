import 'package:flutter/material.dart';
import 'package:math_solution/buttonn.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body:Padding(padding:EdgeInsets.all(25.0),
           child: Column(
            children: [SizedBox(height:48),

            Text('Math Buddy',
            style:TextStyle(fontSize:43.0,
                             fontWeight: FontWeight.bold,
                             color: Color.fromARGB(255, 156, 154, 128))),
 
             SizedBox(height:5),

            //Image
            Padding(padding: EdgeInsets.all(40.0),
            child:Image.asset('lib/images/bunny4.png'),
            ),

            Text('Hi, Welcome To Math Buddy',
             style:TextStyle(fontSize:33.0,
                             fontWeight: FontWeight.bold,
                             color: Color.fromARGB(255, 156, 154, 128))),
                             
                             
             SizedBox(height:78),
             SizedBox(width:90),
            //button
            MyButton(text:"Get Started",
            //go to the next page
            onTap:() {Navigator.pushNamed(context, '/mainPage');



            })           
                             ],
                       ),
      
      
      )





      
    );
  }
}