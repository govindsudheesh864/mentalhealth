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
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -292,
              width: 960,
              top: 352,
              height: 960,
              child: Container(
                width: 960,
                height: 960,
                decoration: BoxDecoration(
                  color: const Color(0xffffeac1),
                  borderRadius: BorderRadius.circular(1234),
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
                      'images/image1_I22437950512213.png',
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
                      'images/image2_I22437950512229.png',
                      width: 54,
                      height: 21,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 59,
              top: 84,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Exercise\nCompleted!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 36,
                        color: const Color(0xff4b3425),
                        fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 257,
                    child: Text(
                      'Task is recorded to Dr freud.\nYou can continue your activity now!',
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
                  const SizedBox(height: 24),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xff4b3425), width: 1),
                      borderRadius: BorderRadius.circular(1234),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, top: 8, right: 16, bottom: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/image_224385.png',
                                width: 24,
                                height: 24,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Duration: 25m',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 12,
                                    color: const Color(0xff4b3425),
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
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
            Positioned(
              left: 7.203,
              width: 393.569,
              top: 394,
              height: 541.997,
              child: Image.asset(
                'images/image_224387.png',
                width: 393.569,
                height: 541.997,
              ),
            ),
            Positioned(
              left: 16,
              width: 343,
              top: 740,
              height: 56,
              child: Container(
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Back to Home',
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
                            'images/image_I22456860428831.png',
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
    );
  }
}
