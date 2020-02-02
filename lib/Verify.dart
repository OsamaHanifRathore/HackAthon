import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify extends StatefulWidget{
  String vid;
  Verify(String vid);
  @override
  _VerifyState createState() => _VerifyState(this.vid);
}

class _VerifyState extends State<Verify> {
  String vid;
  _VerifyState(this.vid);
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child:ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 40),
                    child: Image.asset("images/logo2.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset("images/verify.png"),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsetsDirectional.only(bottom: 8.0),
                            child: Text("Enter code sent to +92 317 1015636", style: TextStyle(fontWeight: FontWeight.w700),),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam",
                            style: TextStyle(height: 1.5),
                          ),
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 5,bottom: 20),
                    child:Text("Verify Code",style: TextStyle(fontWeight: FontWeight.w800),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 60),
                    child: PinCodeTextField(
                      length: 4,
                      obsecureText: false,
                      animationType: AnimationType.fade,
                      shape: PinCodeFieldShape.box,
                      animationDuration: Duration(milliseconds: 300),
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                    )
                  ),
                  InkWell(
                    onTap: (){
//                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Verify()));
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsetsDirectional.only(bottom: 20,top: 10,start: 80,end:80),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          "Verify Code",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}