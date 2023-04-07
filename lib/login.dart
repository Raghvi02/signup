import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:signin/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return  Scaffold(
        body: Column(
        children: [
        Container(

        width: w,
        height: h * 0.3,
        decoration:  BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        'img/loginimg.png',

    ),
    fit: BoxFit.fitWidth,
    ),


    ),
    ),
    Container(
    margin: EdgeInsets.only(left: 20),
    child:  Column(
    // mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children:[

    Text(
    'Hello', style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50,
    ),
    ),
    ]
    ),
    Text(
    'Sign into your account', style: TextStyle(
    fontSize: 12,
    color: Colors.grey,
    ),),


    ],
    ),
    ),

    SizedBox(height: h * 0.02),

    Container(
    height: 60,
    margin: EdgeInsets.only(left: 20, right: 20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
    BoxShadow(
    blurRadius: 10,
    offset: Offset(1, 1),
    color: Colors.grey.withOpacity(0.5),
    )
    ]
    ),
    child: TextField(

    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white,
    width: 1.0
    ),
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white
    )
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    )
    ),
    )
    ),

    SizedBox(height: h * 0.02,),
    Container(
    height: 60,
    margin: EdgeInsets.only(left: 20, right: 20, ),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
    BoxShadow(
    blurRadius: 10,
    offset: Offset(1, 1),
    color: Colors.grey.withOpacity(0.5),
    )
    ]
    ),
    child: TextField(

    decoration: InputDecoration(
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white,
    width: 1.0
    ),
    ),

    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
    color: Colors.white
    )
    ),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    )
    ),
    ),
    ),
    SizedBox(height: h * 0.02,)      ,
    Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
    Text('Forgot your password?',
    style: TextStyle(
    color: Colors.grey,
    fontSize: 20
    ),),
    ]
    ),
    SizedBox(height: h * 0.08,),
    Container(
    height: 60,
    width: 150,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage(
    'img/loginbtn.png'
    ),
    fit: BoxFit.fill

    ),
    borderRadius: BorderRadius.circular(60),


    ),
    child: Center(
    child:
    Text('Sign up',
    style: TextStyle(
    fontSize: 20
    ),),
    ) ,
    ),
   // SizedBox(height: 10,),

    SizedBox(height:h*0.1),
    RichText(text:TextSpan(
    text: 'Dont have an account?',
    style: TextStyle(
    fontSize: 20,
    color:   Colors.grey
    ),
    children:   [
    TextSpan(
    text: ' Create' ,

recognizer: TapGestureRecognizer()..onTap=()=>signup(),
    style:      TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black
    )
    )
    ]
    ))
    ],


    ),
    );
  }
}
