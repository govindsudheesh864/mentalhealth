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
        height: 1058,
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
                      'images/image1_I22753850512213.png',
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
                      'images/image2_I22753850512229.png',
                      width: 54,
                      height: 21,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              top: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/image_227540.png',
                    width: 343,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 343,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Notifications',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: 30,
                                              color: const Color(0xff4b3425),
                                              fontFamily:
                                                  'UrbanistRoman-ExtraBold',
                                              fontWeight: FontWeight.normal),
                                          maxLines: 9999,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xfffed2c2),
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12,
                                                top: 8,
                                                right: 12,
                                                bottom: 8),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '+11',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0xfffd631a),
                                                      fontWeight:
                                                          FontWeight.normal),
                                                  maxLines: 9999,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 117),
                                    Image.asset(
                                      'images/image_227546.png',
                                      width: 64,
                                      height: 64,
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
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 343,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Earlier This Day',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .none,
                                                                  fontSize: 18,
                                                                  color: const Color(
                                                                      0xff4b3425),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal),
                                                              maxLines: 9999,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                            const SizedBox(
                                                                width: 131),
                                                            Image.asset(
                                                              'images/image_I227549522866.png',
                                                              width: 24,
                                                              height: 24,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                          height: 12),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xffffffff),
                                                                            borderRadius:
                                                                                BorderRadius.circular(32),
                                                                            boxShadow: const [
                                                                              BoxShadow(color: const Color(0x0c4b3425), offset: Offset(0, 8), blurRadius: 16),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Image.asset(
                                                                                                  'images/image_I2275516599877.png',
                                                                                                  width: 64,
                                                                                                  height: 64,
                                                                                                ),
                                                                                                const SizedBox(width: 12),
                                                                                                Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Message from Dr Freud AI!',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                    const SizedBox(height: 8),
                                                                                                    Text(
                                                                                                      '52 Total Unread Messages ⚠',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                  ],
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
                                                                  const SizedBox(
                                                                      height:
                                                                          8),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xffffffff),
                                                                            borderRadius:
                                                                                BorderRadius.circular(32),
                                                                            boxShadow: const [
                                                                              BoxShadow(color: const Color(0x0c4b3425), offset: Offset(0, 8), blurRadius: 16),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Image.asset(
                                                                                                  'images/image_I22755261034603.png',
                                                                                                  width: 64,
                                                                                                  height: 64,
                                                                                                ),
                                                                                                const SizedBox(width: 12),
                                                                                                Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Journal Incomplete!',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                    const SizedBox(height: 8),
                                                                                                    Text(
                                                                                                      'It’s Reflection Time! ✍',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            const SizedBox(width: 57),
                                                                                            SizedBox(
                                                                                              width: 64,
                                                                                              height: 64,
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  Positioned(
                                                                                                    left: 4,
                                                                                                    width: 56,
                                                                                                    top: 4,
                                                                                                    height: 56,
                                                                                                    child: Image.asset(
                                                                                                      'images/image1_I2275526599783.png',
                                                                                                      width: 56,
                                                                                                      height: 56,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 4,
                                                                                                    width: 56,
                                                                                                    top: 4,
                                                                                                    height: 56,
                                                                                                    child: Image.asset(
                                                                                                      'images/image2_I2275526599784.png',
                                                                                                      width: 56,
                                                                                                      height: 56,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Positioned(
                                                                                                    left: 19,
                                                                                                    top: 25,
                                                                                                    child: Text(
                                                                                                      '8/32',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
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
                                                                  const SizedBox(
                                                                      height:
                                                                          8),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xffffffff),
                                                                            borderRadius:
                                                                                BorderRadius.circular(32),
                                                                            boxShadow: const [
                                                                              BoxShadow(color: const Color(0x0c4b3425), offset: Offset(0, 8), blurRadius: 16),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Image.asset(
                                                                                                  'images/image_I2275536599801.png',
                                                                                                  width: 64,
                                                                                                  height: 64,
                                                                                                ),
                                                                                                const SizedBox(width: 12),
                                                                                                Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Exercise Complete!',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                    const SizedBox(height: 8),
                                                                                                    Text(
                                                                                                      '22m Breathing Done. 🧘‍♀️',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            const SizedBox(width: 57),
                                                                                            Image.asset(
                                                                                              'images/image_I2275536599809.png',
                                                                                              width: 48,
                                                                                              height: 48,
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
                                                                  const SizedBox(
                                                                      height:
                                                                          8),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xffffffff),
                                                                            borderRadius:
                                                                                BorderRadius.circular(32),
                                                                            boxShadow: const [
                                                                              BoxShadow(color: const Color(0x0c4b3425), offset: Offset(0, 8), blurRadius: 16),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: double.infinity,
                                                                                                child: Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Image.asset(
                                                                                                      'images/image_I2275546599818.png',
                                                                                                      width: 64,
                                                                                                      height: 64,
                                                                                                    ),
                                                                                                    const SizedBox(width: 12),
                                                                                                    Expanded(
                                                                                                      child: Container(
                                                                                                        width: double.infinity,
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
                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                      children: [
                                                                                                                        Text(
                                                                                                                          'Mental Health Data is Here.',
                                                                                                                          textAlign: TextAlign.left,
                                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                                                          maxLines: 9999,
                                                                                                                          overflow: TextOverflow.ellipsis,
                                                                                                                        ),
                                                                                                                        const SizedBox(height: 8),
                                                                                                                        Text(
                                                                                                                          'Your Monthly Mental Analysis is here.',
                                                                                                                          textAlign: TextAlign.left,
                                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                                          maxLines: 9999,
                                                                                                                          overflow: TextOverflow.ellipsis,
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                            const SizedBox(height: 16),
                                                                                                            Container(
                                                                                                              decoration: BoxDecoration(
                                                                                                                border: Border.all(color: const Color(0xff4b3425), width: 1),
                                                                                                                borderRadius: BorderRadius.circular(16),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: const EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
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
                                                                                                                          'images/image_I2275546599836.png',
                                                                                                                          width: 24,
                                                                                                                          height: 24,
                                                                                                                        ),
                                                                                                                        const SizedBox(width: 6),
                                                                                                                        Text(
                                                                                                                          'Shinomiya Data.pdf',
                                                                                                                          textAlign: TextAlign.left,
                                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
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
                                                                                                    ),
                                                                                                  ],
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
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  const SizedBox(
                                                                      height:
                                                                          8),
                                                                  Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                const Color(0xffffffff),
                                                                            borderRadius:
                                                                                BorderRadius.circular(32),
                                                                            boxShadow: const [
                                                                              BoxShadow(color: const Color(0x0c4b3425), offset: Offset(0, 8), blurRadius: 16),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12),
                                                                            child:
                                                                                Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Image.asset(
                                                                                                  'images/image_I2275556599847.png',
                                                                                                  width: 64,
                                                                                                  height: 64,
                                                                                                ),
                                                                                                const SizedBox(width: 12),
                                                                                                Column(
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      'Mood Improved.',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                    const SizedBox(height: 8),
                                                                                                    Row(
                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          'Neutral',
                                                                                                          textAlign: TextAlign.left,
                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                          maxLines: 9999,
                                                                                                          overflow: TextOverflow.ellipsis,
                                                                                                        ),
                                                                                                        const SizedBox(width: 8),
                                                                                                        Image.asset(
                                                                                                          'images/image_I2275556616261.png',
                                                                                                          width: 24,
                                                                                                          height: 24,
                                                                                                        ),
                                                                                                        const SizedBox(width: 8),
                                                                                                        Text(
                                                                                                          'Happy',
                                                                                                          textAlign: TextAlign.left,
                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
                                                                                                          maxLines: 9999,
                                                                                                          overflow: TextOverflow.ellipsis,
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            const SizedBox(width: 57),
                                                                                            Image.asset(
                                                                                              'images/image_I2275556599851.png',
                                                                                              width: 48,
                                                                                              height: 48,
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
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 32),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 343,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Last Week',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .none,
                                                          fontSize: 18,
                                                          color: const Color(
                                                              0xff4b3425),
                                                          fontWeight: FontWeight
                                                              .normal),
                                                      maxLines: 9999,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    const SizedBox(width: 131),
                                                    Image.asset(
                                                      'images/image_I227557522866.png',
                                                      width: 24,
                                                      height: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 12),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 343,
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffffffff),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                            color: const Color(
                                                                0x0c4b3425),
                                                            offset:
                                                                Offset(0, 8),
                                                            blurRadius: 16),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
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
                                                                child:
                                                                    Container(
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
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Image.asset(
                                                                                'images/image_I2275596599857.png',
                                                                                width: 64,
                                                                                height: 64,
                                                                              ),
                                                                              const SizedBox(width: 12),
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  child: Column(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Stress Decreased.',
                                                                                        textAlign: TextAlign.left,
                                                                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                        maxLines: 9999,
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                      ),
                                                                                      const SizedBox(height: 8),
                                                                                      Row(
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              child: Image.asset(
                                                                                                'images/image_I2275596616270.png',
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      const SizedBox(height: 8),
                                                                                      Text(
                                                                                        'Stress Level is now 3.',
                                                                                        textAlign: TextAlign.left,
                                                                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
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
                                                      color: const Color(
                                                          0xffffffff),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                            color: const Color(
                                                                0x0c4b3425),
                                                            offset:
                                                                Offset(0, 8),
                                                            blurRadius: 16),
                                                      ],
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12),
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
                                                                child:
                                                                    Container(
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
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Image.asset(
                                                                                'images/image_I2275606599894.png',
                                                                                width: 64,
                                                                                height: 64,
                                                                              ),
                                                                              const SizedBox(width: 12),
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  child: Column(
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Dr Freud Recommendations.',
                                                                                        textAlign: TextAlign.left,
                                                                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff4b3425), fontWeight: FontWeight.normal),
                                                                                        maxLines: 9999,
                                                                                        overflow: TextOverflow.ellipsis,
                                                                                      ),
                                                                                      const SizedBox(height: 8),
                                                                                      Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                        children: [
                                                                                          Image.asset(
                                                                                            'images/image_I2275606599898.png',
                                                                                            width: 20,
                                                                                            height: 20,
                                                                                          ),
                                                                                          const SizedBox(width: 4),
                                                                                          Text(
                                                                                            '48 Health Recommendations',
                                                                                            textAlign: TextAlign.left,
                                                                                            style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xa31f160f), fontWeight: FontWeight.normal),
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
                    ],
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
                'images/image_227561.png',
                width: 375,
                height: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
