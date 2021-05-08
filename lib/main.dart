import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var img = 'images/j.jpg';
  var imgUp = "images/g.jpg";
  var imgDown = "images/j.jpg";

  var jassi = "Jaskaran Singh";
  var gua = "Guatam Sharma";
  var name = "Guatam Sharma";
  @override
  void initState() {
    super.initState();
    img = imgUp; //inizialize the image as imgUp version
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.cyanAccent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 150,
                  backgroundImage: new AssetImage(img),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Text(
                    name,
                    
                    style: TextStyle(
                      
                      fontFamily: 'Itim',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: TextButton(
                    
                    child: Text(
                      "Hey, meet my friend!!",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (img == "images/j.jpg") {
                          img = "images/g.jpg";
                          name = gua;
                        } else if (img == "images/g.jpg") {
                          img = "images/j.jpg";
                          name = jassi;
                        }
                      });
                    },
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top:25),
                   child: Text(
                    "\"Damn. My eyes are naturally drawn in her direction. Is this the unibreastal law of gravitation? Leave it to Sir Isaac Newtit.\"",
                    
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                ),
                 ),
                  Padding(
                   padding: const EdgeInsets.only(top:25),
                   child: Text(
                    "\“This isn't for both of you!!\"",
                    
                    style: TextStyle(
                      fontFamily: 'Itim',
                      fontSize: 20,
                      // fontWeight: FontWeight.bold,
                    ),
                ),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
