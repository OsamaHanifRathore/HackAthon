import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
@override
Size get preferredSize => Size.fromHeight(50);

  Widget build(BuildContext context) {
   return Container(
     height: 70,
padding: EdgeInsets.only(top: 10),
color:Color(0xff3E3E3E),

      child: Row(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: ClipRRect(
               borderRadius: BorderRadius.all(Radius.circular(30)),
               child:Image.asset("images/userImage.jpg",width: 50,height: 70,),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: Text("chat",style: TextStyle(color: Colors.white,fontSize: 30),),
           ),
         Expanded(
           child: SizedBox(),
         ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Icon(Icons.add,color: Colors.white,),
           ),
           Container(
             width: 60,
             height: 40,
             decoration: new BoxDecoration(
                 color: Colors.green, //new Color.fromRGBO(255, 0, 0, 0.0),
                 borderRadius: new BorderRadius.only(
                     topLeft:  const  Radius.circular(40.0),
                     bottomLeft: const  Radius.circular(40.0))
             ),
           child: Center(
             child: Icon(
               Icons.search,
               color: Colors.white,
             ),
           ),
           ),
         ],
       )
//     child: Row(
//
//       children: <Widget>[
//         Text("Chats",style: TextStyle(color: Colors.white),)
//       ],
//     ),
//   );

   );
  }
}