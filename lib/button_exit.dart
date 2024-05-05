import 'package:flutter/material.dart';

class ExitButton extends StatelessWidget {
  final String text;
  final void Function ()? onTap;
  const ExitButton({super.key,
   required this.text,
   required this.onTap});
  


 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      decoration:BoxDecoration(color: Color.fromARGB(255, 12, 223, 9),borderRadius:BorderRadius.circular(20), ),
      padding: const EdgeInsets.all(20.0),
      child: Text(text,
      style:const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      )
      
    )
    );
}

}