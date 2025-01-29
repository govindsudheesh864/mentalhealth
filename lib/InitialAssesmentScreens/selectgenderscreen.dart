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
        height: 812,
        decoration: BoxDecoration(
          color: const Color(0xfff7f4f2),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 121,
              width: 382,
              top: 249,
              height: 374.153,
              child: Image.asset(
                'images/image1_I94365109268624.png',
                width: 382,
                height: 374.153,
              ),
            ),
            Positioned(
              left: 125,
              width: 424.016,
              top: 389,
              height: 306.303,
              child: Image.asset(
                'images/image2_I94366109268985.png',
                width: 424.016,
                height: 306.303,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 812,
              child: Container(
                height: 812,
                decoration: BoxDecoration(
                  color: const Color(0xfff7f4f2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 375,
                      bottom: 0,
                      height: 34,
                      child: Image.asset(
                        'images/image_94359.png',
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
                            left: 308,
                            width: 3,
                            top: 18,
                            height: 10,
                            child: Container(
                              width: 3,
                              height: 10,
                              decoration: BoxDecoration(
                                color: const Color(0xff4e3321),
                                borderRadius: BorderRadius.circular(1234),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 303,
                            width: 3,
                            top: 20,
                            height: 8,
                            child: Container(
                              width: 3,
                              height: 8,
                              decoration: BoxDecoration(
                                color: const Color(0xff4e3321),
                                borderRadius: BorderRadius.circular(1234),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 298,
                            width: 3,
                            top: 22,
                            height: 6,
                            child: Container(
                              width: 3,
                              height: 6,
                              decoration: BoxDecoration(
                                color: const Color(0xff4e3321),
                                borderRadius: BorderRadius.circular(1234),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 293,
                            width: 3,
                            top: 24,
                            height: 4,
                            child: Container(
                              width: 3,
                              height: 4,
                              decoration: BoxDecoration(
                                color: const Color(0xff4e3321),
                                borderRadius: BorderRadius.circular(1234),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 336,
                            width: 24.328,
                            top: 17.333,
                            height: 11.333,
                            child: Image.asset(
                              'images/image1_I9436050512214.png',
                              width: 24.328,
                              height: 11.333,
                            ),
                          ),
                          Positioned(
                            left: 33,
                            width: 26,
                            top: 16,
                            height: 12,
                            child: Image.asset(
                              'images/image2_I94360106135041.png',
                              width: 26,
                              height: 12,
                            ),
                          ),
                          Positioned(
                            left: 315.929,
                            width: 14.142,
                            top: 18,
                            height: 8.586,
                            child: Image.asset(
                              'images/image3_I94360106187371.png',
                              width: 14.142,
                              height: 8.586,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      width: 343,
                      top: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/image_I943616157824.png',
                            width: 48,
                            height: 48,
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Assessment',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20,
                                    color: const Color(0xff4e3321),
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 28,
                            decoration: BoxDecoration(
                              color: const Color(0xffe8dcd8),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 6, right: 10, bottom: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '2 of 14',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 14,
                                        color: const Color(0xff926247),
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 148,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'What’s your official gender?',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 30,
                                        color: const Color(0xff4e3321),
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 343,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      color: const Color(0xff4e3321), width: 1),
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: const Color(0x3f926247),
                                        offset: Offset(0, 0),
                                        blurRadius: 0),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                            'I am Male',
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                fontSize: 16,
                                                                color: const Color(
                                                                    0xff3f3b35),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                            maxLines: 9999,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 80),
                                                  Image.asset(
                                                    'images/image_I94365109268362.png',
                                                    width: 24,
                                                    height: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: 343,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(32),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: const Color(0x0c4b3425),
                                        offset: Offset(0, 8),
                                        blurRadius: 16),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          child: Text(
                                                            'I am Female',
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                fontSize: 16,
                                                                color: const Color(
                                                                    0xff3f3b35),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                            maxLines: 9999,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 80),
                                                  Image.asset(
                                                    'images/image_I94366109268866.png',
                                                    width: 24,
                                                    height: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 343,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: const Color(0xffe5ead6),
                                  borderRadius: BorderRadius.circular(1000),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24, top: 16, right: 24, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Prefer to skip, thanks',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 18,
                                                color: const Color(0xff9bb067),
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(width: 12),
                                          Image.asset(
                                            'images/image_I9436860428831.png',
                                            width: 24,
                                            height: 24,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                width: 343,
                                height: 56,
                                decoration: BoxDecoration(
                                  color: const Color(0xff4e3321),
                                  borderRadius: BorderRadius.circular(1000),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24, top: 16, right: 24, bottom: 16),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Continue',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 18,
                                                color: const Color(0xffffffff),
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(width: 12),
                                          Image.asset(
                                            'images/image_I9436960428831.png',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
