import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:qr_flutter/qr_flutter.dart';

class qr extends StatefulWidget {
  const qr({super.key, required this.title});
  final String title;
  @override
  State<qr> createState() => _qrState();
}

class _qrState extends State<qr> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title:Text("Email Validator",
            style: TextStyle(fontFamily:"kilsonburg",fontSize: 25,color: Colors.white),
          )
      ),
      body: Container(
        child: Center(
          child: GlassContainer.frostedGlass(height: 500, width: 500,child: QrImage(
            data:"mailto:"+widget.title,
            // version: QrVersions.auto,
            size: 200,
          ),),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF68998c),
                  Color(0xFFe17763),
                  Color(0xFFfe4a97),
                  Color(0xFF873bcc),
                  Color(0xFF701ebd) ,
                ],
                // begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
      ),

    );
  }
}