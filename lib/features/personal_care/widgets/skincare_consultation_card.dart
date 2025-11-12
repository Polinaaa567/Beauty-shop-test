import 'package:beauty_store/shared/widgets/button_quiz.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SkincareConsultationCard extends StatelessWidget {
  const SkincareConsultationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 51.0 - 21.5),
      height: 169.0,
      color: const Color(0xffF4F4F4),
      child: Stack(
        children: [
          _buildBackground(),
          _buildBlurredCircle(),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Positioned.fill(
      top: -40.0,
      left: -6.0,
      child: Transform.flip(
        flipX: true,
        flipY: false,
        child: Opacity(
          opacity: 0.41,
          child: Image.asset(
            'assets/images/background/background_test.png',
            height: 234.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildBlurredCircle() {
    return Positioned(
      bottom: 6.0,
      top: 0.0,
      left: 24.0,
      child: ClipOval(
        child: Container(
          width: 157.0,
          height: 157.0,
          color: Colors.white.withOpacity(0.1),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 5.0),
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 24,
          child: Container(
            padding: EdgeInsets.only(left: 24.0),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              'Составим схему идеального домашнего ухода',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
              textDirection: TextDirection.ltr,
              softWrap: true,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          top: 72,
          child: Container(
            padding: EdgeInsets.only(left: 24.0),

            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              '10 вопросов о вашей коже',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const Positioned(top: 105.0, child: ButtonQuiz()),
      ],
    );
  }
}
