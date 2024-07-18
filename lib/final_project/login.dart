import 'package:flutter/material.dart';
import 'package:flutter_app/final_project/label.dart';
import 'package:flutter_app/final_project/signup.dart';


import '../final_project/home.dart';
import 'database.dart';

class Login extends StatefulWidget {
  DatabaseApp d;

  _LoginState createState() => _LoginState();
}
  class _LoginState extends State<Login> {
  DatabaseApp d;
  @override
  void initState() {
  super.initState();
  d=DatabaseApp();
  }
  var email=TextEditingController();

  int f;
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color.fromRGBO(62, 70, 77,1),
        centerTitle: true ,

        title: Row(

          children: [

            Container(

              child: Expanded(

                child:InkWell( onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("MULTI" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1),backgroundColor: Colors.white, ),),
                      Text("SHOP" ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white,backgroundColor:Color.fromRGBO(251, 212, 65, 1) ),),
                    ],
                  ),
                ),
              ),

            ),




          ],
        ),


      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login ',style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          ),),
          SizedBox(height: 50,),

          Label(x:email,t1: 'email',t2: 'enter email',c: Icon(Icons.email,color: Colors.grey,)),
         Label2(x:password,t1: 'password',t2: 'enter your password',c: (Icon(Icons.remove_red_eye_sharp,color: Colors.grey,))),


          MaterialButton(
            onPressed: (){if(d.getrow(email.text, password.text))
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Home(userName: email.text,)),);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login),
                SizedBox(width: 20,),
                Text('sign in'),
              ],
            ),
            color: Colors.yellow,
            elevation: 10,
            minWidth: 150,
          ),

          TextButton(onPressed: (){ Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Signup()),);},
              child: Text(
                  'no account click here',
                style: TextStyle(color: Colors.grey),
              ))

        ],
      ),
    );
  }
}