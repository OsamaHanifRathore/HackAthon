import 'package:flutter/material.dart';

import 'CustomAppBar.dart';

class Chat extends StatelessWidget{
  final imgList = ["comp0.png","comp1.png","comp3.png","comp2.png","comp4.png","comp5.png","comp6.png","comp7.png","comp8.png","comp9.png"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body:Column(
      children:<Widget>[
        Image.asset("images/bar.png"),
        Expanded(
          child: Container(
            child:ListView.builder(
         itemCount: imgList.length,
          itemBuilder: (ctx,l){
           return ListTile(
             leading: CircleAvatar(
               backgroundImage: AssetImage("images/comp${l}.png"),
             ),
             title: Text('Osama Hanif Rathore'),
             subtitle: Text('Hello and welcome to '),

           );
          },
        )
          ),
        )
//        ListView.builder(
//         itemCount: imgList.length,
//          itemBuilder: (ctx,l){
//           return ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage("images/component${l}.jpg"),
//             ),
//             title: Text('Osama Hanif Rathore'),
//             subtitle: Text('Hello and welcome to '),
//
//           );;
//          },
//        )
      ]
      ),
      );
  }


}

