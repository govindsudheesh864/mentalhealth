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
          color: const Color(0xffe7ddd8),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -208.5,
              width: 792,
              top: 1,
              height: 528,
              child: Image.asset(
                'images/image1_227985.png',
                width: 792,
                height: 528,
              ),
            ),
            Positioned(
              left: -36.953,
              width: 448.965,
              top: 61,
              height: 447.024,
              child: Image.asset(
                'images/image2_227989.png',
                width: 448.965,
                height: 447.024,
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
                      left: 309,
                      top: 56,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '7h 50m',
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
                                    'Sleep Quality Increased!',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 24,
                                        color: const Color(0xff4b3425),
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 248,
                                    child: Text(
                                      'Your sleep quality is 55% higher compared to last mongh.',
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
                          const SizedBox(height: 32),
                          Container(
                            width: 343,
                            height: 56,
                            decoration: BoxDecoration(
                              color: const Color(0xff4b3425),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'See Sleep Quality',
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
                                        'images/image_I22809760428831.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                      'images/image1_I22809850512213.png',
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
                      'images/image2_I22809850512229.png',
                      width: 54,
                      height: 21,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              bottom: 0,
              height: 34,
              child: Image.asset(
                'images/image3_228099.png',
                width: 375,
                height: 34,
              ),
            ),
            Positioned(
              left: 16,
              width: 343,
              top: 60,
              child: Image.asset(
                'images/image4_228100.png',
                width: 343,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
