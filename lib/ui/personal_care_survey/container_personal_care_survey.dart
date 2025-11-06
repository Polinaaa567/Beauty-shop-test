import 'package:flutter/material.dart';

class PersonalCareSurvey extends StatelessWidget {
  const PersonalCareSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 894 - 575 - 278.47),
      child: Container(
        padding: EdgeInsets.only(left: 22),
        color: Color(0xffF4F4F4),
        height: 250,
        child: Stack(
          children: [
            Transform.flip(
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
            ),
            Positioned(
              top: 26,
              child: Text(
                "Моя схема домашнего ухода",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
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
            ),
            Positioned(
              top: 193,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Ответьте на 10 вопросов, \nи мы подберем нужный уход ",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: 118,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Color(0xff2B2B2B),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Пройти тест',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentCareRoutine extends StatelessWidget {
  final String title;
  final Widget asset;
  final double top;
  final double left;

  const CurrentCareRoutine({
    super.key,
    required this.title,
    required this.asset,
    required this.top,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 81,
      height: 101,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 81,
            height: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Colors.white.withOpacity(0.5),
                width: 3,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: top,
                  left: left,
                  child: Opacity(opacity: 0.06, child: asset),
                ),
              ],
            ),
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
