import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:hackathon/Login.dart';

class Swipper extends StatefulWidget{
  @override
  _SwipperState createState() => _SwipperState();
}

class _SwipperState extends State<Swipper> {
  final swipperlist= ["swipper1.png","swipper2.png","swipper3.png"];
  var lengthOfs;
  @override
  void initState() {
    lengthOfs = swipperlist.length;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Swiper(
        itemBuilder: (context,lengthOfs) {
          return swip(context, lengthOfs);
        },
        itemCount: lengthOfs,
        pagination: new SwiperPagination(
          margin: EdgeInsetsDirectional.only(bottom: 150),

        ),


      ),
        );
}



  Widget swip(BuildContext context, len){
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login()));
        },
        child: Container(
          height: 400,
          width: 600,

          child: Column(
              children: <Widget>[
                Image.asset(
                  "images/${swipperlist[len]}",
                  fit: BoxFit.fill,
                ),
Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, "
    "sed diam nonumy eirmod tempor invidunt ut labore et "
    "dolore magna aliquyam erat, sed diam")
              ]
          ),
        ),
      ),
    );
  }
}