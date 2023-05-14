import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:validators/validators.dart';
import 'qr.dart';
import 'package:page_transition/page_transition.dart';

class valid extends StatefulWidget {

  @override
  State<valid> createState() => _ValidState();
}

class _ValidState extends State<valid> {
  final _textEditingController=TextEditingController();
  bool isEmailCorrect=false;
  var qrS="";
  @override
  void dispose(){
    _textEditingController.dispose();
    super.dispose();
  }

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
          child: Column(
            children: [
              SizedBox(height: 130,),
              GlassContainer.frostedGlass(height: 300, width: 390,borderRadius: BorderRadius.circular(20),child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enter the email address:",style: TextStyle(
                    fontFamily: 'Roboto',fontSize: 35,color: Colors.yellow
                  ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white
                      ),
                      controller: _textEditingController,
                      onChanged: (val){
                        setState(() {
                          isEmailCorrect =isEmail(val);
                          qrS=val;
                        });
                        // isEmailCorrect =isEmail(val);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                          ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        filled: true,
                        fillColor: Colors.deepPurpleAccent,
                        hintText: "Input Email Here!",
                        prefixIcon:Icon(
                          Icons.email_outlined
                        ) ,
                        // border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: (){
                            _textEditingController.clear();
                          }
                          ,
                          icon: const Icon(Icons.clear),
                          color: Colors.red,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GlassContainer.clearGlass(height: 60, width: 120,
                      gradient: isEmailCorrect==true? LinearGradient(
                          colors: [
                            Colors.greenAccent.withOpacity(.4),
                            Colors.green.withOpacity(0.6)
                          ]
                        ):LinearGradient(
                            colors: [
                              Colors.redAccent.withOpacity(.4),
                              Colors.red.withOpacity(0.6)
                            ]
                    ),
                    //   color:isEmailCorrect==false ?Colors.red.withOpacity(0.6):Colors.green.withOpacity(0.6),
                 child: isEmailCorrect==true?Center(child: Text("Verified",textAlign: TextAlign.center,)):Center(child: Text("Not Verified",textAlign: TextAlign.center,)),
                  )
                ],
              ),),
              SizedBox(height: 10,),
              ElevatedButton.icon(onPressed:isEmailCorrect==false?(){}:(){
                Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTopJoined, child: qr(title: qrS,), duration: Duration(seconds: 1),childCurrent: valid()));
              }, icon:Icon(Icons.mail_rounded) , label: Text("QR Code"),
                style:  isEmailCorrect==true?ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
              ):ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                )
                ,)
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

            )
        ),
      ),

    );
  }
}


