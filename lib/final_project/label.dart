import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Label({var x,String t1,String t2,Icon c})=>
    MaterialButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
          controller: x,

          cursorColor: Colors.grey,
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 3,color: Colors.grey),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
            ),
            labelText: t1,
            hintText: t2,
            labelStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.edit,color: Colors.grey,),

            suffixIcon: c,
          ),
        ),
      ),
    );
Widget Label2({var x,String t1,String t2,Icon c})=>
    MaterialButton(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
          controller: x,
          obscureText: true,
          cursorColor: Colors.grey,
          decoration: InputDecoration(

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 3,color: Colors.grey),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
            ),
            labelText: t1,
            hintText: t2,
            labelStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.edit,color: Colors.grey,),

            suffixIcon: c,
          ),
        ),
      ),
    );