import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class CodiaPage extends StatefulWidget {
  CodiaPage({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<CodiaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: const Color(0xffdde0e6),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -78,
              width: 206,
              top: 96,
              height: 87,
              child: Image.asset(
                'images/image1_228102.png',
                width: 206,
                height: 87,
              ),
            ),
            Positioned(
              left: 231,
              width: 99.619,
              top: 141,
              height: 41.992,
              child: Image.asset(
                'images/image2_228103.png',
                width: 99.619,
                height: 41.992,
              ),
            ),
            Positioned(
              left: -102,
              width: 236,
              top: 248,
              height: 100,
              child: Image.asset(
                'images/image3_228104.png',
                width: 236,
                height: 100,
              ),
            ),
            Positioned(
              left: 143,
              width: 246,
              top: 226,
              height: 104,
              child: Image.asset(
                'images/image4_228105.png',
                width: 246,
                height: 104,
              ),
            ),
            Positioned(
              left: -25,
              width: 438.004,
              top: 73,
              height: 428.998,
              child: Image.asset(
                'images/image5_228106.png',
                width: 438.004,
                height: 428.998,
              ),
            ),
            Positioned(
              left: 165,
              width: 248,
              top: -20,
              height: 96,
              child: Image.asset(
                'images/image6_228182.png',
                width: 248,
                height: 96,
              ),
            ),
            Positioned(
              left: -293,
              width: 960,
              top: 439,
              height: 960,
              child: Container(
                width: 960,
                height: 960,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(1234),
                  boxShadow: const [
                    BoxShadow(
                        color: const Color(0x0c4b3425),
                        offset: Offset(0, 0),
                        blurRadius: 0),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 338.5,
                      top: 56,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'It’s Time!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 60,
                                color: const Color(0xff4b3425),
                                fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Time for mediation session.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 24,
                                    color: const Color(0xff4b3425),
                                    fontFamily: 'UrbanistRoman-ExtraBold',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: 248,
                                child: Text(
                                  'Dr Freud AI said you need to do it today. Pelase do 25m session.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: const Color(0xa31f160f),
                                      fontWeight: FontWeight.normal),
                                  maxLines: 9999,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 309,
                      width: 343,
                      top: 264,
                      height: 56,
                      child: Container(
                        width: 343,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xff878e96),
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 24, top: 16, right: 24, bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Let’s Meditate',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 18,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(width: 16),
                                  Image.asset(
                                    'images/image_I22818960428831.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              bottom: 0,
              height: 34,
              child: Image.asset(
                'images/image7_228190.png',
                width: 375,
                height: 34,
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              top: 0,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                    left: 293.667,
                    width: 66.661,
                    top: 17.331,
                    height: 11.336,
                    child: Image.asset(
                      'images/image1_I22819150512213.png',
                      width: 66.661,
                      height: 11.336,
                    ),
                  ),
                  Positioned(
                    left: 21,
                    width: 54,
                    top: 12,
                    height: 21,
                    child: Image.asset(
                      'images/image2_I22819150512229.png',
                      width: 54,
                      height: 21,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              width: 343,
              top: 60,
              child: Image.asset(
                'images/image8_228192.png',
                width: 343,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
