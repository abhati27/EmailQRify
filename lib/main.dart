import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:glass_kit/glass_kit.dart';
import 'valid.dart';

void main() {
  runApp(MyApp());
}

class MyHome extends StatefulWidget {

  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHome(),
    );
  }
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          centerTitle: true,
        title:Text("Tutorial",
          style: TextStyle(fontFamily:"kilsonburg",fontSize: 30,color: Colors.white),)

      ),
      body: Container(
        child: Center(
              child: Column(
                children: [
                  SizedBox(height: 130,),
                  Text("This application is an email validator in which we can input an email in a textfield.\n You can also recieve a QR Code for a valid email",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Roboto", fontSize: 35,color: Colors.white)),
                  SizedBox(height: 40,),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTopJoined, child: valid(), duration: Duration(seconds: 2),childCurrent: MyHome()));
                      },
                      child: GlassContainer.clearGlass(height: 50, width: 350, child: Center(child: Text("Begin Application",textAlign: TextAlign.center,style: TextStyle(fontSize: 35,fontFamily: 'roboto',color: Colors.white,fontWeight: FontWeight.w900))),borderRadius: BorderRadius.circular(20),))
                ],
              ),
          ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF701ebd) ,
                  Color(0xFF873bcc),
                  Color(0xFFfe4a97),
                  Color(0xFFe17763),
                  Color(0xFF68998c)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
      ),

      );
  }
}

