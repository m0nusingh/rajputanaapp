import 'package:Rajputana/Widgets/navigations.dart';




import 'package:flutter/material.dart';

import 'products/onep.dart';
import 'products/twop.dart';
import 'products/threep.dart';
import 'products/fourp.dart';
import 'products/fivep.dart';
import 'products/sixp.dart';
import 'products/sevenp.dart';

class ProductsPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ProductsPageState();
  }
}

class ProductsPageState extends State<ProductsPage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle productstyle =
      TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600,);

      _gotop1(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new OnepPage())) ;

      }
      _gotop2(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new TwopPage())) ;

      }
      _gotop3(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new ThreepPage())) ;

      }
      _gotop4(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new FourpPage())) ;

      }
      _gotop5(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new FivepPage())) ;

      }
       _gotop6(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SixpPage())) ;

      }
       _gotop7(){

        Navigator.push(
        context, new MaterialPageRoute(builder: (context) => new SevenpPage())) ;

      }
  @override
  Widget build(BuildContext context) {

      double width = MediaQuery.of(context).size.width;

  
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
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill)),
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0,left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Products',
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
                        padding: const EdgeInsets.only(top: 20.0,right: 10),
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
                      Navv(4),
                      SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 30, top: 10),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    GestureDetector( 
                                      onTap: _gotop1,
                                                                          child: Column(
                                        children: <Widget>[
                                          new ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7)),
                                            child: Image.asset(
                                              'assets/images/1.jpg',
                                              width: width*0.36,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                            width: width*0.36,
                                            height: width*0.13,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text( 
                                                'STAINLESS STEEL RCS ',textAlign:TextAlign.center,
                                                style: productstyle,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    GestureDetector(onTap: _gotop2,
                                                                          child: Column(
                                        children: <Widget>[
                                          new ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7)),
                                            child: Image.asset(
                                              'assets/images/2.jpg',
                                              width: width*0.36,
                                            ),
                                          ),
                                          Container(
                                            width: width*0.36,
                                            height: width*0.13,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                'STAINLESS STEEL FLAT BAR',textAlign:TextAlign.center,
                                                style: productstyle,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    GestureDetector( onTap: _gotop3,
                                                                          child: Column(
                                        children: <Widget>[
                                          new ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7)),
                                            child: Image.asset(
                                              'assets/images/3.jpg',
                                              width: width*0.36,
                                            ),
                                          ),
                                          Container(
                                            width: width*0.36,
                                            height: width*0.13,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                'STAINLESS STEEL HEXAGONAL BAR',textAlign:TextAlign.center,
                                                style: productstyle,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    GestureDetector(onTap: _gotop4,
                                                                          child: Column(
                                        children: <Widget>[
                                          new ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7)),
                                            child: Image.asset(
                                              'assets/images/4.jpg',
                                              width: width*0.36,
                                            ),
                                          ),
                                          Container(
                                            width: width*0.36,
                                            height: width*0.13,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                'CONTINOUS CAST BILLETS',textAlign:TextAlign.center,
                                                style: productstyle,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(onTap: _gotop5,
                                                              child: Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          new ClipRRect(
                                            borderRadius: new BorderRadius.only(
                                                topLeft: Radius.circular(7),
                                                topRight: Radius.circular(7)),
                                            child: Image.asset(
                                              'assets/images/5.jpg',
                                              width: width*0.36,
                                              
                                            ),
                                          ),
                                          Container(
                                            width: width*0.36,
                                            height: width*0.13,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0,
                                                  right: 8.0,
                                                  top: 5.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                'STAINLESS STEEL ROUNDED BARS',textAlign:TextAlign.center,
                                                style: productstyle,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      GestureDetector(onTap: _gotop6,
                                                                              child: Column(
                                          children: <Widget>[
                                            new ClipRRect(
                                              borderRadius: new BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7)),
                                              child: Image.asset(
                                                'assets/images/6.jpg',
                                                width: width*0.36,
                                              ),
                                            ),
                                            Container(
                                              width: width*0.36,
                                              height: width*0.13,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(7),
                                                    bottomRight:
                                                        Radius.circular(7)),
                                                color: Color(0xffE2B4A4),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    right: 8.0,
                                                    top: 5.0,
                                                    bottom: 5.0),
                                                child: Text(
                                                  'STAINLESS STEEL SQUARE BARS',textAlign:TextAlign.center,
                                                  style: productstyle,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                   
                                      GestureDetector( onTap: _gotop7,
                                                                              child: Column(
                                          children: <Widget>[
                                            new ClipRRect(
                                              borderRadius: new BorderRadius.only(
                                                  topLeft: Radius.circular(7),
                                                  topRight: Radius.circular(7)),
                                              child: Image.asset(
                                                'assets/images/7.jpg',
                                                width: width*0.36,
                                              ),
                                            ),
                                            Container(
                                              width: width*0.36,
                                              height: width*0.13,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(7),
                                                  bottomRight:
                                                      Radius.circular(7)),
                                              color: Color(0xffE2B4A4),
                                            ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0,
                                                    right: 8.0,
                                                    bottom: 5.0),
                                                child: Text(
                                                  'STAINLESS STEEL WIRE RODS',textAlign:TextAlign.center,
                                                  style: productstyle,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                     
                                                                              Column(
                                          children: <Widget>[
                                            
                                            Container(
                                              width: width*0.36,
                                             
                                            )
                                          ],
                                        ),
                                      
                                    
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
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

