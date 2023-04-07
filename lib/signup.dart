
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override

  Widget build(BuildContext context) {
    List images = [
      "g.png",
      "f.png",
       "t.png"
    ];
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
                  hintText: "Your email id",
                    prefixIcon: Icon(Icons.email,
                    color: Colors.deepOrangeAccent,),
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
                  hintText: "Your password",
                  prefixIcon: Icon(Icons.password,
                  color: Colors.deepOrangeAccent,),
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
         // SizedBox(height: h * 0.02,)      ,

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
              Text('Sign in',
                style: TextStyle(
                    fontSize: 20
                ),),
            ) ,
          ),
          SizedBox(height:h*0.2),
          RichText(text:const TextSpan(
              text: 'Sign up using one of the following',
              style: TextStyle(
                  fontSize: 16,
                  color:   Colors.grey
              ),

          )),
          Wrap(
            children: List<Widget>.generate(3, (index) {
              return Padding(
                padding:const EdgeInsets.all(10),
              child:    CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(


                    radius: 25,
                    backgroundImage: AssetImage(
                      "img/"+ images[index]
                    ),
                  ),
                  ),

              );
            })
          )


        ],


      ),
    );
  }
}
