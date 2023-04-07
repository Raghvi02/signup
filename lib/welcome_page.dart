import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

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
                  'img/signup.png',

                ),
                fit: BoxFit.fitWidth,
              ),


            ),
            child: Column(
              children: [
                SizedBox(height: h*0.150,),
                CircleAvatar(
                  radius: 60 ,
                  backgroundImage: AssetImage(
                      'img/profile1.png'
                  ),
                )
              ],
            ),
          ),


          SizedBox(height: h * 0.02),

Container(
  width: w,
  margin: EdgeInsets.only(left: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Welcome',
        style: TextStyle(
            color: Colors.black,
            fontSize: 50
        ),),
      Text('Raghvig02',
        style: TextStyle(
            color: Colors.grey,
            fontSize: 20
        ),)
    ],
  ),
),



           SizedBox(height: h * 0.1,)      ,

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
              Text('Sign out',
                style: TextStyle(
                    fontSize: 20
                ),),
            ) ,
          ),





        ],


      ),
    );
  }
}
