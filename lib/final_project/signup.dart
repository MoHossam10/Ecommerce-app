import 'package:flutter/material.dart';
import 'package:flutter_app/final_project/label.dart';
import 'package:flutter_app/final_project/login.dart';


import '../final_project/home.dart';
import 'database.dart';


class Signup extends StatefulWidget {
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  DatabaseApp d;
  @override
  void initState() {
    super.initState();
    d=DatabaseApp();
  }

  var email=TextEditingController();
  var name=TextEditingController();
  var phone=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(62, 70, 77,1),
        centerTitle: true ,

        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
              ),
            ),
            SizedBox(width: 10,),
            Container(

              child: Expanded(
                flex: 5,
                child:InkWell( onTap: () {

                },
                  child: Row(

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
          Text('Signup ',style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey
          ),),
          SizedBox(height: 50,),
          Label(x:name,t1: 'name',t2: 'enter your full name',c: Icon(Icons.accessibility,color: Colors.grey,)),
          Label(x:phone,t1: 'phone',t2: 'enter your phone number',c: Icon(Icons.phone,color: Colors.grey,)),
          Label(x:email,t1: 'email',t2: 'enter email',c: Icon(Icons.email,color: Colors.grey,)),
          Label(x:password,t1: 'password',t2: 'enter your password',c: (Icon(Icons.remove_red_eye_sharp,color: Colors.grey,))),

          MaterialButton(
            onPressed: (){d.insertData(name.text, password.text);
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Login()),);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.login),
                SizedBox(width: 20,),
                Text('sign up'),
              ],
            ),
            color: Colors.yellow,
            elevation: 10,
            minWidth: 150,
          ),
        ],
      ),
    );
  }


}