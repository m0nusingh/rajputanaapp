import 'package:flutter/material.dart';

class PicturePage extends StatefulWidget {
  final String ind;

  PicturePage({this.ind});

  State<StatefulWidget> createState() {
    return PicturePageState(this.ind);
  }
}

class PicturePageState extends State<PicturePage> {
  TextStyle bold =
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle productstyle = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  String ind;
  int num;
  double ss=0;
  PicturePageState(this.ind);

  ScrollController scrollpics = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Widget _myListView(BuildContext context) {
      List pics = [
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9507.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9776.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9509.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9511.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9539.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9619.jpg',
        'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A9729.jpg'
      ];

      int myind = pics.indexOf(ind);
      pics.removeAt(myind);
      pics.insert(0, ind);
      String king =
          'https://raw.githubusercontent.com/ankitsaini00/rajputana__images/master/DT3A';
// '$king'+'${index+9502}'+'.jpg'
      return ListView.builder(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: pics.length,
        controller: scrollpics,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          String url = pics[index];
          String monu = '$king' + '${index + 9502}' + '.jpg';
          // print(monu);
          return 
         
             GestureDetector(
              onTap: () {
                // clicked(context, '$url'); 
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  // width: 400,
                  height: width,
                  child: Image.network(
                    '$url',
                    // height: width,
                    width: width,
                    semanticLabel: url,
                  ),
                ),
              ),
            
          );
        },
      );
    }

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
            color: Colors.black,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  child: new Row(
                    children: <Widget>[
                      GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:20.0),
                                                child: Image.asset(
                          'assets/images/back.png',
                          width: 40,
                        ),
                                              ),
                      )
                    ],
                  ),
                ),
                Container(height:  MediaQuery.of(context).size.height*0.10,),
                Container(
                    height: height*0.5,
                    width: width,
                    decoration: BoxDecoration(color: Colors.black),
                    child: _myListView(context)),
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            print('s,fjhb');
                            double temp  = this.ss;
                            double w = MediaQuery.of(context).size.width +100;
                            temp = temp +width;
                            scrollpics.animateTo( this.ss, duration: Duration(seconds: 1),curve: Curves.ease);
                                  this.setState(() {
                                    this.ss = temp;
                                  });

                          },
                          child: Icon(Icons.skip_next,size: 60,color: Color(0xffbd4417),)),
                      ],
                    ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
