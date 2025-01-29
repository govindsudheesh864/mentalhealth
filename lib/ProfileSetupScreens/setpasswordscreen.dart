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
          color: const Color(0xfff7f3f2),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
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
                      'images/image1_I22953050512213.png',
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
                      'images/image2_I22953050512229.png',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/image_I22953152316891.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Password Setup',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 20,
                            color: const Color(0xff4b3425),
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 13,
              right: 12,
              top: 140,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/image_229533.png',
                    width: 343,
                    height: 88,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 344,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Password Strength',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              color: const Color(0xff4b3425),
                              fontWeight: FontWeight.normal),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Image.asset(
                                  'images/image_229547.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Weak!! Increase strength 💪',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 16,
                              color: const Color(0xff4b3425),
                              fontWeight: FontWeight.normal),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 167,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfffed2c2),
                                      border: Border.all(
                                          color: const Color(0xfffe804b),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(1234),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
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
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'images/image_I22955560729479.png',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: Text(
                                                            'Must have A-Z',
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                fontSize: 12,
                                                                color: const Color(
                                                                    0xfffe804b),
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
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    width: 167,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfffed2c2),
                                      border: Border.all(
                                          color: const Color(0xfffe804b),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(1234),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
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
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        'images/image_I22955660729479.png',
                                                        width: 20,
                                                        height: 20,
                                                      ),
                                                      const SizedBox(width: 4),
                                                      Expanded(
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          child: Text(
                                                            'Must have numbers',
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .none,
                                                                fontSize: 12,
                                                                color: const Color(
                                                                    0xfffe804b),
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
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4b3425),
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 24,
                                            top: 16,
                                            right: 24,
                                            bottom: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
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
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontSize: 18,
                                                      color: const Color(
                                                          0xffffffff),
                                                      fontWeight:
                                                          FontWeight.normal),
                                                  maxLines: 9999,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                const SizedBox(width: 16),
                                                Image.asset(
                                                  'images/image_I22955760428831.png',
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 291,
              child: Container(
                height: 291,
                decoration: BoxDecoration(
                  color: const Color(0xffdde0e6),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 1,
                      right: -1,
                      bottom: 0,
                      height: 34,
                      child: Image.asset(
                        'images/image_I22955850511679.png',
                        height: 34,
                      ),
                    ),
                    Positioned(
                      left: 3,
                      right: 3,
                      top: 8,
                      height: 259,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 327,
                            width: 15,
                            top: 233,
                            height: 25,
                            child: Image.asset(
                              'images/image1_I22955850511681.png',
                              width: 15,
                              height: 25,
                            ),
                          ),
                          Positioned(
                            left: 22,
                            width: 27,
                            top: 232,
                            height: 27,
                            child: Image.asset(
                              'images/image2_I22955850511690.png',
                              width: 27,
                              height: 27,
                            ),
                          ),
                          Positioned(
                            left: 281,
                            right: 0,
                            top: 162,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'images/image_I22955850511698.png',
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 11,
                                  child: Text(
                                    'Go',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 93,
                            right: 94,
                            top: 162,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'images/image_I22955850511701.png',
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 11,
                                  child: Text(
                                    'space',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 282,
                            top: 162,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Image.asset(
                                    'images/image_I22955850511704.png',
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 11,
                                  child: Text(
                                    '123',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 327,
                            right: 0,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 0,
                                        bottom: 0,
                                        child: Image.asset(
                                          'images/image_I22955850511708.png',
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 11,
                                        child: Text(
                                          ' ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 16,
                                              color: const Color(0xff34393f),
                                              fontFamily: 'SFProText-Regular',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 9.66,
                                  width: 22.66,
                                  top: 12.66,
                                  height: 16.994,
                                  child: Image.asset(
                                    'images/image_I22955850511710.png',
                                    width: 22.66,
                                    height: 16.994,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 327,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  height: 42,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 0,
                                        bottom: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xffffffff),
                                            borderRadius:
                                                BorderRadius.circular(4.6),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color:
                                                      const Color(0xff898a8d),
                                                  offset: Offset(0, 1),
                                                  blurRadius: 0),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20.188,
                                        top: 8,
                                        child: Text(
                                          ' ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 22.5,
                                              color: const Color(0xff34393f),
                                              fontFamily: 'SFProText-Regular',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 11.66,
                                  width: 18.88,
                                  top: 12.2,
                                  height: 16.456,
                                  child: Image.asset(
                                    'images/image_I22955850511723.png',
                                    width: 18.88,
                                    height: 16.456,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 282,
                            right: 55,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 6,
                                  top: 8,
                                  child: Text(
                                    'M',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 244,
                            right: 93,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'N',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 206,
                            right: 131,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'B',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 169,
                            right: 168,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'V',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 131,
                            right: 206,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'C',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 94,
                            right: 243,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'X',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 56,
                            right: 281,
                            top: 108,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'Z',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 319,
                            right: 18,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 8,
                                  child: Text(
                                    'L',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 281,
                            right: 56,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'K',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 244,
                            right: 93,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 8,
                                  child: Text(
                                    'J',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 206,
                            right: 131,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'H',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 169,
                            right: 168,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'G',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 131,
                            right: 206,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 8,
                                  child: Text(
                                    'F',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 94,
                            right: 243,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'D',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 56,
                            right: 281,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'S',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 19,
                            right: 318,
                            top: 54,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'A',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 337,
                            right: 0,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'P',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 300,
                            right: 37,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 8,
                                  child: Text(
                                    'O',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 262,
                            right: 75,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13,
                                  top: 8,
                                  child: Text(
                                    'I',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 225,
                            right: 112,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Text(
                                    'U',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 187,
                            right: 150,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'Y',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 150,
                            right: 187,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'T',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 112,
                            right: 225,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'R',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 75,
                            right: 262,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 9,
                                  top: 8,
                                  child: Text(
                                    'E',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 37,
                            right: 300,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: 8,
                                  child: Text(
                                    'W',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 337,
                            top: 0,
                            height: 42,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(4.6),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: const Color(0xff898a8d),
                                            offset: Offset(0, 1),
                                            blurRadius: 0),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 8,
                                  child: Text(
                                    'Q',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 22.5,
                                        color: const Color(0xff34393f),
                                        fontFamily: 'SFProText-Regular',
                                        fontWeight: FontWeight.normal),
                                    maxLines: 9999,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
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
