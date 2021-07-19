import 'package:flutter/material.dart';
import 'package:mountassissi_clone/const/variables.dart';



class CustomAppBar extends AppBar {
  CustomAppBar({Key? key,required Widget title}):super(key: key,
    backgroundColor: Colors.white,
    elevation: 0.9,
    title: Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              debugPrint('hello');
            },
            //width: 50,
            //height: 50,
            child: Container(
              //borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/icons/logo.png',
                height: 50,
                width: 50,
              ),
            ),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Variables.appTitle,
                style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
              ),
              title,
            ],
          ),
        ],
      ),
    ),//title,
      actions: <Widget>[
      new IconButton(
        onPressed: (){
          debugPrint('button pressed');
        },
        icon: new Icon(Icons.notifications,color: Colors.red,),
      )
      ]);
}

/*
class CustomAppBar extends StatefulWidget {
  //const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title:
      Container(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: Image.asset(
                'assets/icons/logo.jpg',
                height: 50,
                width: 50,
              ),
            ),
            Text(
              Variables.appTitle,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: true,
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications,color: Colors.red,))
      ],
    );
  }
}
*/
