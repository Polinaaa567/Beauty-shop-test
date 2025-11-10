import 'package:flutter/material.dart';

class ButtonQuiz extends StatelessWidget{
  const ButtonQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 118,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xff2B2B2B),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Center(
        child: Text(
          'Пройти тест',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );
  }
}