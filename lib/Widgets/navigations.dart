import 'package:Rajputana/about.dart';
import 'package:Rajputana/calculator.dart';
import 'package:Rajputana/contact.dart';
import 'package:Rajputana/gallery.dart';
import 'package:Rajputana/grades.dart';
import 'package:Rajputana/home.dart';
import 'package:Rajputana/product.dart';
import 'package:flutter/material.dart';
import '../enquiry.dart';

class Enquiry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EnquiryS();
  }
}

class EnquiryS extends State<Enquiry> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,
            new MaterialPageRoute(builder: (context) => new EnquiryPage()));
      },
      child: Container(
        alignment: Alignment(0, 0),
        height: height * 0.5,
        width: width * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color(0xff01498E),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'E',
              style: bold,
            ),
            Text('N', style: bold),
            Text('Q', style: bold),
            Text('U', style: bold),
            Text('I', style: bold),
            Text('R', style: bold),
            Text('Y', style: bold),
          ],
        ),
      ),
    );
  }
}

class Navv extends StatefulWidget {
  final int num;
  Navv(this.num);
  State<StatefulWidget> createState() {
    return NavSate(this.num);
  }
}

class NavSate extends State<Navv> {

  int num;
  NavSate(this.num);
  final TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);

  gotohome() {
    // Navigator.pop(context);
    print('hello');
    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new HomePage()));
  }

  gotogrades() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new GradesPage()));
  }

  gotoabout() {
    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new AboutPage()));
  }

  gotocontact() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new ContactPage()));
  }

  gotogallery() {
    Navigator.pushReplacement(context,
        new MaterialPageRoute(builder: (context) => new GalleryPage()));
  }

  gotocalc() {
    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new CalcPage()));
  }
  gotobars(){
    Navigator.pushReplacement(
        context, new MaterialPageRoute(builder: (context) => new ProductsPage()));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.75,
      width: width * 0.1,
      decoration: BoxDecoration(
          color: Color(0xff01498E), borderRadius: BorderRadius.circular(7)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(
            'assets/images/logo2.png',
            height: height * 0.08,
          ),
           GestureDetector(
            onTap: gotohome,
            child: Image.asset(
              'assets/images/iconn/home.png',
              height: height * 0.08,
            ),
          ),
         (num!=1)? GestureDetector(
            onTap: gotoabout,
            child: Image.asset(
              'assets/images/info.png',
              height: height * 0.08,
            ),
          ):new Container(),
           (num!=3)? GestureDetector(
              onTap: gotocalc,
              child: Image.asset(
                'assets/images/iconn/calc.png',
                height: height * 0.08,
              ),
            ):Container(color: Colors.pinkAccent,width: 0,height: 0,),
          
          (num!=4)?GestureDetector(
            onTap: gotobars,
            child: Image.asset(
              'assets/images/bars.png',
              height: height * 0.08,
            ),
          ): Container(color: Colors.pinkAccent,width: 0,),
          (num!=5)?GestureDetector(
            onTap: gotogallery,
            child: Image.asset(
              'assets/images/iconn/gallery.png',
              height: height * 0.08,
            ),
          ):Container(width: 0,),
          (num!=6)?GestureDetector(
            onTap: gotogrades,
            child: Image.asset(
              'assets/images/iconn/grades.png',
              height: height * 0.08,
            ),
          ): Container(width: 0,),
          (num!=7)?GestureDetector(
            onTap: gotocontact,
            child: Image.asset(
              'assets/images/contact.png',
              height: height * 0.08,
            ),
          ): Container(width: 0,),
        ],
      ),
    );
  }
}
