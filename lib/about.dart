import 'package:Rajputana/Widgets/navigations.dart';
import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

import 'certificate.dart';

class AboutPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AboutPageState();
  }
}

class AboutPageState extends State<AboutPage> {
  TextStyle bold = TextStyle(fontSize: 20, color: Colors.white);
  _gobacktohome() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double pxratio = 3.5;
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Exo2',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
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
                            'About Us',
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
                      padding: const EdgeInsets.only(top: 20, right: 10.0),
                      child: Image.asset(
                        'assets/images/rajputana_logo.png',
                        height: 80,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.78,
                color: Colors.white,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Navv(1),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            child: SizedBox(
                                height: width * 0.5,
                                width: width * 0.8,
                                child: Carousel(

                                  dotSize: 4.0,
                                  dotSpacing: 15.0,
                                  dotColor: Color(0xffbd4417),
                                  
                                  borderRadius: true,
                                  // indicatorBgPadding: 5.0,
                                  dotBgColor: Colors.purple.withOpacity(0.0),

                                  images: [
                                    Container(
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: new AssetImage(
                                              'assets/images/tsix.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: new AssetImage(
                                              'assets/images/two.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        image: DecorationImage(
                                          image: new AssetImage(
                                              'assets/images/three.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 75,
                            child: Text(
                              'BORN TO FIRE BUILD EMPIRE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: pxratio * 7,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 80,
                            child: Text(
                              'RAJPUTANA STAINLESS-IN STEEL WE TRUST',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: pxratio * 4.5,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xffbd4417)),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 75,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 2, right: 2),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Spread across 8 acres of land at Halol Kalol Road, Panchmahal dist. Vadodara, we expertise in offering wide size variants in stainless steel like Billets, Round Bars (Black & Bright), Square Bars, Hex Bars, Wire Rods, Flat Bars & RCS. We are committed to serve modern technology with unmatched quality backed with superior packaging and timely delivery of products. Our commitments have been awarded with the prestigious “TUV” Certification and ISO 9001:2008 certification for the Quality Management.',
                                      style: TextStyle(fontSize: pxratio * 5),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Text(' '),
                                    Text(
                                        'Our corporate offices are located at Vadodara and Mumbai. Besides this, we have dealers all across India. Suraj Stainless Ltd. , Rajratna Metals and similar stainless steel players are few names to be mentioned from our customer profile.',
                                        style: TextStyle(fontSize: pxratio * 5),
                                        textAlign: TextAlign.justify),
                                    Text(' '),
                                    Text(
                                        'At Rajputana we believe that the strong team of people that we have been able to pull in is the sole reason of our strongly growing business. We abide to strive on working and maintaining the strong foundation of integrity and commitment to deliver high quality products, in the coming years.',
                                        style: TextStyle(fontSize: pxratio * 5),
                                        textAlign: TextAlign.justify)
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Enquiry(),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new CertPage()));
                },
                child: Container(
                  alignment: Alignment(0, 0),
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xff01498E),
                  child: Text(
                    'CERTIFICATES',
                    style: new TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
