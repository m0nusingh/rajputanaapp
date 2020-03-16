import 'package:Rajputana/Widgets/navigations.dart';
import 'package:Rajputana/gallery.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'product.dart';
import 'grades.dart';
import 'calculator.dart';
import 'contact.dart';
import 'enquiry.dart';


class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  gotoaboutus() {
    print('Going to about us');
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new AboutPage()));
  }

  gotoproducts() {
    print('Going to products ');
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ProductsPage())) ;
  }

  gotocalculator() {
   Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new CalcPage())) ;
  }

  gotogrades() {
    print('Going to grades');
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new GradesPage())) ;
  }

  gotogetintouch() {
    print('going to get in touch ');
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new EnquiryPage())) ;
  
  }
  gotogallery(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new GalleryPage())) ;
  }
  gotocontact(){
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ContactPage())) ;
  }

  

   @override
  build(BuildContext c) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return MaterialApp(
       theme: ThemeData(
        fontFamily: 'Exo2',
       
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Container(
          // color: Colors.black,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Home',
                            style: new TextStyle(
                                fontSize: 33,
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
                      padding: const EdgeInsets.only(top: 20, right: 10.0),
                      child: Image.asset(
                        'assets/images/rajputana_logo.png',
                        height: 80,
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                height: MediaQuery.of(context).size.height * 0.1,
               
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
               
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                   new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              gotoaboutus();
                            },
                            child: Container(
                              alignment: new Alignment(0, 0),
                              height: height*0.18,
                              width: width*0.33,
                              decoration: BoxDecoration(
                                  color: Color(0xff01498E),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/info.png',
                                    height: height*0.08,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              gotoproducts();
                            },
                            child: Container(
                              alignment: new Alignment(0, 0),
                                height: height*0.18,
                              width: width*0.33,
                              decoration: BoxDecoration(
                                  color: Color(0xff01498E),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/bars.png',
                                    height: height*0.08,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    
                     new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: gotocalculator,
                            child: Container(
                              alignment: new Alignment(0, 0),
                             height:height*0.18,
                              width: width*0.33,
                              decoration: BoxDecoration(
                                  color: Color(0xff01498E),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/iconn/calc.png',
                                    height: height*0.08,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: gotogrades,
                            child: Container(
                              alignment: new Alignment(0, 0),
                               height: height*0.18,
                              width: width*0.33,
                              decoration: BoxDecoration(
                                  color: Color(0xff01498E),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/iconn/grades.png',
                                    height: height*0.08,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: gotogallery,
                          child: Container(
                            alignment: new Alignment(0, 0),
                              height: height*0.18,
                            width: width*0.33,
                            decoration: BoxDecoration(
                                color: Color(0xff01498E),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/iconn/gallery.png',
                                  height: height*0.08,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: gotocontact,
                          child: Container(
                            alignment: new Alignment(0, 0),
                              height: height*0.18,
                            width: width*0.33,
                            decoration: BoxDecoration(
                                color: Color(0xff01498E),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/iconn/contact.png',
                                  height: height*0.08,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                   
                     GestureDetector(
                        onTap: gotogetintouch,
                        child: new Container(
                           height: height*0.08,
                          width: width*0.78,
                          alignment: new Alignment(0, 0),
                          decoration: BoxDecoration(
                              color: Color(0xffbd4417),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            'Get In Touch',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    
                  ],
                ),
              ),
             
            ],
          ),
        )),
      ),
    );
  }
}
