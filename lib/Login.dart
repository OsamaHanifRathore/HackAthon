import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Verify.dart';

import 'Chat.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneNo = TextEditingController();
@override
  void initState() {
   checkUser(context);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Center(
          child:ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image.asset("images/logo2.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Stack(
                      children: <Widget>[
                        Container(
                            child: Positioned(
                                left: 50,
                                top: 10,
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800, fontSize: 40),
                                ))),
                        Image.asset("images/login2.png"),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam",
                        style: TextStyle(height: 1.5),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 20),
                    child:Text("Enter Phone Number",style: TextStyle(fontWeight: FontWeight.w800),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                    ),
                    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 50),
                    child: TextField(
                      controller: phoneNo,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+92 317 1015636"
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      verifyPhone();
                    },
                    child: Container(
                      height: 50,
                      margin: EdgeInsetsDirectional.only(bottom: 20,top: 10,start: 50,end:50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                      child: Center(
                        child: Text(
                          "Verify Phone Number",
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

void verifyPhone() async{

//  final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
//      (String verificationId) {
//    this.verification_id = verificationId;
//    setState(() {
//      status = "\nAuto retrieval time out";
//    });
//  };
String SphoneNo = phoneNo.text;
String verification_id;


  var firebaseAuth = FirebaseAuth.instance;
  print(SphoneNo);
  firebaseAuth.verifyPhoneNumber(
      phoneNumber: SphoneNo,
      timeout: Duration(seconds: 60),
      verificationCompleted: (cred){
        FirebaseAuth.instance.signInWithCredential(cred);
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Chat()));
      },
      verificationFailed: (error){
       print(error.message);
},
      codeSent: (vid,[int forceResendingToken]){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Verify(vid)));
      },
      codeAutoRetrievalTimeout:(vid){
                print("autoretrieval timeout");
      });
}
checkUser(BuildContext context) async{
  var auth = FirebaseAuth.instance;
  FirebaseUser realtimeuser = await auth.currentUser();
  print(realtimeuser.phoneNumber);
  if(realtimeuser!= null){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Chat()));
  }
}
}
