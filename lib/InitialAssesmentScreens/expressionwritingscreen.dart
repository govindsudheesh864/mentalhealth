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
              left: 33,
              width: 266,
              top: 359,
              height: 37,
              child: Image.asset(
                'images/image_94780.png',
                width: 266,
                height: 37,
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
                        'images/image_94771.png',
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
                              'images/image1_I9477250512214.png',
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
                              'images/image2_I94772106135041.png',
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
                              'images/image3_I94772106187371.png',
                              width: 14.142,
                              height: 8.586,
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              child: Text(
                                                'Expression Analysis',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 30,
                                                    color:
                                                        const Color(0xff4e3321),
                                                    fontWeight:
                                                        FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 308,
                                        child: Text(
                                          'Freely write down anything that\'s on your mind. Dr Freud.ai is here to listen...',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 16,
                                              color: const Color(0xff736a66),
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 48),
                          SizedBox(
                            width: 343,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          border: Border.all(
                                              color: const Color(0xff4e3321),
                                              width: 1),
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x3f4b3425),
                                                offset: Offset(0, 0),
                                                blurRadius: 0),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(24),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  child: Text(
                                                                    'I don’t want to be alive anymore. Just f****** kill me, doc.',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: TextStyle(
                                                                        decoration:
                                                                            TextDecoration
                                                                                .none,
                                                                        fontSize:
                                                                            30,
                                                                        color: const Color(
                                                                            0xff4e3321),
                                                                        fontWeight:
                                                                            FontWeight.normal),
                                                                    maxLines:
                                                                        9999,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 64),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Image.asset(
                                                                'images/image_94790.png',
                                                                width: 24,
                                                                height: 24,
                                                              ),
                                                              const SizedBox(
                                                                  width: 8),
                                                              Text(
                                                                '75/250',
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: TextStyle(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .none,
                                                                    fontSize:
                                                                        16,
                                                                    color: const Color(
                                                                        0xff736a66),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal),
                                                                maxLines: 9999,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
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
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff9bb067),
                                    borderRadius: BorderRadius.circular(1234),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: const Color(0x3f9bb068),
                                          offset: Offset(0, 0),
                                          blurRadius: 0),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, top: 8, right: 16, bottom: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/image_94794.png',
                                              width: 24,
                                              height: 24,
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              'Use voice Instead',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 16,
                                                  color:
                                                      const Color(0xffffffff),
                                                  fontWeight:
                                                      FontWeight.normal),
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
                          const SizedBox(height: 48),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        'images/image_I9479660428831.png',
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
                    Positioned(
                      left: 16,
                      width: 343,
                      top: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/image_I947976157824.png',
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
                                    '14 of 14',
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
