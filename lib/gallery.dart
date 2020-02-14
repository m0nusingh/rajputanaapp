import 'dart:async';

import 'package:Rajputana/Widgets/navigations.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'picture.dart';

class GalleryPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return GalleryPageState();
  }
}
// Timer timer;

String whaturl =
    'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9502.jpg';

class GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Comfortaa',
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Gallery',
                              style: new TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            Container(
                              height: 7,
                              width: 100,
                              color: Color(0xffbd4417),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, right: 10),
                        child: Image.asset(
                          'assets/images/rajputana_logo.png',
                          height: 80,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Navv(5),
                      Container(
                        // color: Colors.pinkAccent,
                        height: MediaQuery.of(context).size.height * 0.85,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.85,
                              // child: _myListView(context),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new PicturePage(
                                                            ind:
                                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9539.jpg')));
                                          },
                                          child: Container(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9539.jpg',
                                                fit: BoxFit.fitWidth,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                              ),
                                            ),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new PicturePage(
                                                            ind:
                                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9619.jpg')));
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9619.jpg',
                                                fit: BoxFit.fitWidth,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new PicturePage(
                                                          ind:
                                                              'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9729.jpg')));
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.network(
                                              'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9729.jpg',
                                              fit: BoxFit.fitWidth,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new PicturePage(
                                                          ind:
                                                              'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9507.jpg'),
                                                ),
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9507.jpg',
                                                fit: BoxFit.fitWidth,
                                                height: width * 0.5,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                  builder: (context) =>
                                                      new PicturePage(
                                                          ind:
                                                              'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9509.jpg'),
                                                ),
                                              );
                                            },
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  new MaterialPageRoute(
                                                    builder: (context) =>
                                                        new PicturePage(
                                                            ind:
                                                                'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9509.jpg'),
                                                  ),
                                                );
                                              },
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                child: Image.network(
                                                  'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9509.jpg',
                                                  fit: BoxFit.fitWidth,
                                                  height: width * 0.5,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                builder: (context) =>
                                                    new PicturePage(
                                                        ind:
                                                            'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9511.jpg'),
                                              ),
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9511.jpg',
                                              fit: BoxFit.fitWidth,
                                              height: width * 0.5,
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
                      ),
                      Enquiry(),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
