import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:firebase_web/firebase.dart' as fb;
import 'package:firebase_web/firestore.dart' as fs;

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TKT CHURCH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffffcc00),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'TKTCHURCH'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;



  openURL() async {
    const url = 'https://test.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url1,url2,url3;
  bool isData = false;
  FetchJSON() async {
    var Response = await http.get(
      "https://the-kings-temple-church.firebaseio.com/GoToData/ListUrl.json",
      headers: {"Accept": "application/json"},
    );

    if (Response.statusCode == 200) {
      String responseBody = Response.body;
      var responseJSON = json.decode(responseBody);
      url1 = responseJSON['buttonurl1'];
      url2 = responseJSON['buttonurl2'];
      url3 = responseJSON['buttonurl3'];
      isData = true;
    } else {
      print('Something went wrong. \nResponse Code : ${Response.statusCode}');
    }
  }

  @override
  void initState() {
    FetchJSON();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xffffcc00),
         image: DecorationImage(
            image: AssetImage("/images/background.png"), fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Container(
          // this will set the outer container size to the height of your screen
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: SingleChildScrollView(
                child: SizedBox(
            width: 400,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(width:200,height: 200,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
                        child: Image.network('/assets/images/logow.png'),
                      )),
                  SizedBox(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Welcome to the Kings Temple Church Online, find the links to help you navigate.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: 'campton',
                            color: Colors.black,),
                            textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 200, // match_parent
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {
                        /*Database db = database();
                        DatabaseReference ref = db.ref("GoToData").child("List").child("button1");
                        ref.onValue.listen((e) {
                          // Do something with datasnapshot

                        });*/

                        html.window.location.href = url1;
                      },
                      color: Colors.white,
                      textColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Salvation",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'campton',
                            color: const Color(0xffffcc00)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      html.window.location.href = url2; // or any website your want
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "New Comer",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'campton',
                          color: const Color(0xffffcc00),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      html.window.location.href = url3;
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Prayer",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'campton',
                          color: const Color(0xffffcc00),),
                      ),
                    ),
                  ),
                  /*SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      html.window.location.href = "https://www.facebook.com/tktfb/";
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'campton',
                          color: const Color(0xffffcc00),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      html.window.location.href = "https://wa.me/914027901386?text=Hello!%20I'm%20interested%20in%20getting%20updates%20from%20Church";
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Connect",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'campton',
                          color: const Color(0xffffcc00),),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      html.window.location.href = "https://securepy.kingstemple.in/";
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Generosity",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'campton',
                          color: const Color(0xffffcc00),),
                      ),
                    ),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.all(42.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("© 2020 THE KINGS TEMPLE CHURCH", style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                          textStyle: Theme.of(context).textTheme.caption),),
                    ),
                  )
                ],
            ),

          ),
              )
          ),

        ),
      ),
    ));
  }

}


void openURL() async {
  const url = 'https://test.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}