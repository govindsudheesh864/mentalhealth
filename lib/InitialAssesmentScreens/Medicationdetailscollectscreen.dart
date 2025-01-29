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
              left: 0,
              width: 375,
              bottom: 0,
              height: 34,
              child: Image.asset(
                'images/image_94589.png',
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
                      'images/image1_I9459050512214.png',
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
                      'images/image2_I94590106135041.png',
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
                      'images/image3_I94590106187371.png',
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
                    'images/image_I945916157824.png',
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
                            '10 of 14',
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
                            'Please specify your medications!',
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
                  const SizedBox(height: 32),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 342,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xffe1e0e0),
                          borderRadius: BorderRadius.circular(1234),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: const Color(0xffec7d1c),
                                  borderRadius: BorderRadius.circular(1234),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: const Color(0x3ffe814b),
                                        offset: Offset(0, 0),
                                        blurRadius: 0),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'A',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'B',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'C',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '...',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'X',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Y',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1234),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Z',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff736a66),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 8, right: 10, bottom: 8),
                                  child: Image.asset(
                                    'images/image_94603.png',
                                    height: 32,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 329,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(1234),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x0c4b3425),
                                                offset: Offset(0, 8),
                                                blurRadius: 16),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Abilify',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 18,
                                                        color: const Color(
                                                            0xff4e3321),
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Image.asset(
                                                'images/image_I94607109269329.png',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(1234),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x0c4b3425),
                                                offset: Offset(0, 8),
                                                blurRadius: 16),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Abilify Maintena',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 18,
                                                        color: const Color(
                                                            0xff4e3321),
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Image.asset(
                                                'images/image_I94608109269329.png',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xff9bb067),
                                          borderRadius:
                                              BorderRadius.circular(1234),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x3f9bb068),
                                                offset: Offset(0, 0),
                                                blurRadius: 0),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Abiraterone',
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
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Image.asset(
                                                'images/image_I94609106193596.png',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(1234),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x0c4b3425),
                                                offset: Offset(0, 8),
                                                blurRadius: 16),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Acetaminophen',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 18,
                                                        color: const Color(
                                                            0xff4e3321),
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    maxLines: 9999,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Image.asset(
                                                'images/image_I94610109269329.png',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xff9bb067),
                                          borderRadius:
                                              BorderRadius.circular(1234),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: const Color(0x3f9bb068),
                                                offset: Offset(0, 0),
                                                blurRadius: 0),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    'Axpelliarmus',
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
                                                ),
                                              ),
                                              const SizedBox(width: 24),
                                              Image.asset(
                                                'images/image_I94611106193596.png',
                                                width: 24,
                                                height: 24,
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
                          const SizedBox(width: 8),
                          Image.asset(
                            'images/image_94612.png',
                            width: 6,
                            height: 312,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Selected:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            color: const Color(0xff4e3321),
                            fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color(0xffe8dcd8),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 4, right: 8, bottom: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Aspirin',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff4e3321),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 4),
                                      Image.asset(
                                        'images/image_I94617148470578.png',
                                        width: 16,
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color(0xffe8dcd8),
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 4, right: 8, bottom: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Ibuprofen',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: 12,
                                            color: const Color(0xff4e3321),
                                            fontWeight: FontWeight.normal),
                                        maxLines: 9999,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(width: 4),
                                      Image.asset(
                                        'images/image_I94618148470578.png',
                                        width: 16,
                                        height: 16,
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
                  const SizedBox(height: 32),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                'images/image_I9461960428831.png',
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
    );
  }
}
