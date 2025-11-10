import 'package:beauty_store/features/personal_care/widgets/current_care_survey.dart';
import 'package:beauty_store/shared/widgets/button_quiz.dart';

import 'package:flutter/material.dart';

import 'dart:ui';

class SkincareQuizSection extends StatelessWidget {
  const SkincareQuizSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 894 - 575 - 278.47),
      child: Container(
        padding: const EdgeInsets.only(left: 22),
        color: const Color(0xffF4F4F4),
        height: 250,
        child: Stack(
          children: [
            _buildBackground(),
            _buildBlurredCircle(),
            _buildTitle(),
            _buildRoutineList(),
            _buildTestSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackground() {
    return Transform.flip(
      flipX: true,
      flipY: false,
      child: Opacity(
        opacity: 0.23,
        child: Image.asset(
          'assets/images/background/background_test.png',
          width: 458,
          height: 248,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBlurredCircle() {
    return Positioned(
      top: 189,
      left: 44,
      child: ClipOval(
        child: Container(
          width: 157,
          height: 157,
          color: Colors.white.withOpacity(0.1),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Positioned(
      top: 26,
      child: Text(
        "Моя схема домашнего ухода",
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildRoutineList() {
    return Positioned(
      top: 65,
      left: 0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CurrentCareRoutine(
              title: 'Демакияж',
              asset: Image.asset(
                'assets/images/product/remove_make_up.png',
                width: 99,
                height: 163,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
              top: 10,
              left: -9,
            ),
            CurrentCareRoutine(
              title: 'Очищение',
              asset: Image.asset(
                'assets/images/product/cleansing.png',
                width: 113,
                height: 154,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
              top: 11,
              left: -16,
            ),
            CurrentCareRoutine(
              title: 'Сыворотка',
              asset: Image.asset(
                'assets/images/product/serum.png',
                width: 68.82,
                height: 94,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
              top: 13,
              left: 6,
            ),
            CurrentCareRoutine(
              title: 'Дневной крем',
              asset: Image.asset(
                'assets/images/product/day_cream.png',
                width: 54,
                height: 66,
                fit: BoxFit.cover,
                color: Colors.black,
              ),
              top: 9,
              left: 13,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTestSection() {
    return Positioned(
      top: 193,
      left: 0,
      right: 0,
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Ответьте на 10 вопросов, \nи мы подберем нужный уход ",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          ButtonQuiz(),
        ],
      ),
    );
  }
}
