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
          color: const Color(0xfff7f4f2),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -292,
              width: 960,
              top: -800,
              height: 960,
              child: Image.asset(
                'images/image1_93967.png',
                width: 960,
                height: 960,
              ),
            ),
            Positioned(
              left: 0,
              width: 375,
              bottom: 0,
              height: 34,
              child: Image.asset(
                'images/image2_93970.png',
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
                        color: const Color(0xffffffff),
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
                        color: const Color(0xffffffff),
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
                        color: const Color(0xffffffff),
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
                        color: const Color(0xffffffff),
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
                      'images/image1_I9397150512214.png',
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
                      'images/image2_I93971106135041.png',
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
                      'images/image3_I93971106187371.png',
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
              top: 200,
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
                            'Sign In To freud.ai',
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
                  const SizedBox(height: 48),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Text(
                                            'Email Address',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 14,
                                                color: const Color(0xff4e3321),
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffffffff),
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xff9bb067),
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            1234),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                          color: const Color(
                                                              0x3f9bb068),
                                                          offset: Offset(0, 0),
                                                          blurRadius: 0),
                                                    ],
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
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
                                                                        Image
                                                                            .asset(
                                                                          'images/image_I9397563341977.png',
                                                                          width:
                                                                              24,
                                                                          height:
                                                                              24,
                                                                        ),
                                                                        const SizedBox(
                                                                            width:
                                                                                8),
                                                                        Text(
                                                                          'princesskaguya@gmail.co|',
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          style: TextStyle(
                                                                              decoration: TextDecoration.none,
                                                                              fontSize: 16,
                                                                              color: const Color(0xff736a66),
                                                                              fontWeight: FontWeight.normal),
                                                                          maxLines:
                                                                              9999,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 81,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Password',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 14,
                                                color: const Color(0xff4e3321),
                                                fontWeight: FontWeight.normal),
                                            maxLines: 9999,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          Expanded(
                                            child: Container(
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffffffff),
                                                borderRadius:
                                                    BorderRadius.circular(1234),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
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
                                                                      'images/image_I9397651835891.png',
                                                                      width: 24,
                                                                      height:
                                                                          24,
                                                                    ),
                                                                    const SizedBox(
                                                                        width:
                                                                            8),
                                                                    Text(
                                                                      'Enter your password...',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: TextStyle(
                                                                          decoration: TextDecoration
                                                                              .none,
                                                                          fontSize:
                                                                              16,
                                                                          color: const Color(
                                                                              0xff736a66),
                                                                          fontWeight:
                                                                              FontWeight.normal),
                                                                      maxLines:
                                                                          9999,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                    ),
                                                                  ],
                                                                ),
                                                                const SizedBox(
                                                                    width: 134),
                                                                Image.asset(
                                                                  'images/image_I9397651835994.png',
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 56,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff4e3321),
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
                                                  'Sign In',
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
                                                const SizedBox(width: 12),
                                                Image.asset(
                                                  'images/image_I9397760428831.png',
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
                  const SizedBox(height: 48),
                  Image.asset(
                    'images/image_93978.png',
                  ),
                  const SizedBox(height: 48),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? Sign Up.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            color: const Color(0xff736a66),
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Forgot Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            color: const Color(0xffec7d1c),
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
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
