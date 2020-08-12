import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

void main2() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TKT CHURCH - REPO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff33cccc),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xff33cccc),
            image: DecorationImage(
                image: AssetImage("/images/backgrounddark.png"), fit: BoxFit.cover),
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
                                "Welcome to the Kings Temple Church Online, find the links to help you navigate to our resources.",
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
                                  side: BorderSide(color: Colors.transparent)),
                              onPressed: () {
                                html.window.location.href = "https://youtu.be/Nk0k2C2JJ_U";
                              },
                              color: const Color(0xff003333),
                              textColor: const Color(0xff33cccc),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "Watch the Video",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    fontFamily: 'campton',
                                    color: const Color(0xff33cccc),),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide(color: Colors.transparent)),
                            onPressed: () {
                              html.window.location.href = "https://store.kingstemple.in/collections/special-35-off/products/at-the-top-07-god-that-elevates"; // or any website your want
                            },
                            color: const Color(0xff003333),
                            textColor: const Color(0xff33cccc),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Download Full Sermon",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'campton',
                                  color: const Color(0xff33cccc),),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide(color: Colors.transparent)),
                            onPressed: () {
                              html.window.location.href = "https://kingstemple.in/";
                            },
                            color: const Color(0xff003333),
                            textColor: const Color(0xff33cccc),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Website",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'campton',
                                  color: const Color(0xff33cccc),),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide(color: Colors.transparent)),
                            onPressed: () {
                              html.window.location.href = "https://www.facebook.com/tktfb/";
                            },
                            color: const Color(0xff003333),
                            textColor: const Color(0xff33cccc),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'campton',
                                  color: const Color(0xff33cccc),),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide(color: Colors.transparent)),
                            onPressed: () {
                              html.window.location.href = "https://wa.me/914027901386?text=Hello!%20I'm%20interested%20in%20getting%20updates%20from%20Church";
                            },
                            color: const Color(0xff003333),
                            textColor: const Color(0xff33cccc),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Connect",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'campton',
                                  color: const Color(0xff33cccc),),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                                side: BorderSide(color: Colors.transparent)),
                            onPressed: () {
                              html.window.location.href = "https://securepy.kingstemple.in/";
                            },
                            color: const Color(0xff003333),
                            textColor: const Color(0xff33cccc),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Generosity",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  fontFamily: 'campton',
                                  color: const Color(0xff33cccc),),
                              ),
                            ),
                          ),
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