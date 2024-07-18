import 'package:flutter/material.dart';
import 'package:flutter_app/final_project/home.dart';
import 'package:flutter_app/final_project/productdetail.dart';


import '../final_project/login.dart';
import 'cart.dart';
import 'checkout.dart';


class Products extends StatelessWidget {
  Map product;
  List page=[];
  var userName;
  Products({Map product,List pages,var userName})
  {
    this.userName=userName;
    this.product=product;
    this.page=pages;
    print(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //backgroundColor: Color.fromRGBO(245, 245, 245,10,),

        child: ListView(

          physics: BouncingScrollPhysics(),
          children: [

            Container(
              height: 80,
              color:Color.fromRGBO(251, 212, 65, 1) ,
              child:ListTile(

                leading: Icon(Icons.account_circle,size: 60,color:Color.fromRGBO(62, 70, 77,1)),
                title: UserAccountsDrawerHeader(accountName:Text(this.userName,style: TextStyle(fontSize: 15,color: Color.fromRGBO(62, 70, 77,1),),),
                  decoration: BoxDecoration(
                    color:Color.fromRGBO(251, 212, 65, 1) ,

                  ),
                ),
              ),


            ),

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: InkWell( onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(BuildContext context)=>Home(pages: page,userName: this.userName,) ),
                );
              },
                child: Card(
                  color: Color.fromRGBO(62, 70, 77,1),
                  child: ListTile(

                    title: Text("Home", style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.home_filled,color: Colors.white,) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Cart(pages: page,userName: this.userName)));
              },
                child: Card(
                  color: Color.fromRGBO(62, 70, 77,1),
                  child: ListTile(


                    title: Text("Shopping Cart", style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.shopping_cart_sharp,color: Colors.white,) ,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: InkWell( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>CheckOut(pages: page,userName: this.userName)));
              },
                child: Card(
                  color: Color.fromRGBO(62, 70, 77,1),
                  child: ListTile(


                    title: Text("Checkout", style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.attach_money_outlined,color: Colors.white,) ,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: InkWell(onTap: (){runApp(MaterialApp(debugShowCheckedModeBanner: false, home:Login()));Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Login()));},
                child: Card(
                  color: Color.fromRGBO(62, 70, 77,1),
                  child: ListTile(
                    title: Text("Logout" , style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.logout,color: Colors.white,) ,
                  ),
                ),
              ),
            ),
          ],
        ),),
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
            SizedBox(width: 25,),
            Container(

              child: Expanded(
                flex: 5,
                child:InkWell( onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:(BuildContext context)=>Home(pages: page,userName: this.userName) ),
                  );
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

            Expanded(
              flex: 1,
              child: Container(
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Cart(pages: page,userName: this.userName)));
                    },
                    child: Icon(Icons.shopping_cart_sharp,size: 20,)),
              ),
            ),


          ],
        ),


      ),
      body: Container(
        color: Color.fromRGBO(245, 245, 245,10),

        child:ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,

          children: [
          Padding(
            padding: const EdgeInsets.only(top:30.0,bottom: 30,right:8,left: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(product["title"],style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1)),),
                Text("     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style:TextStyle(fontSize: 5,color: Color.fromRGBO(62, 70, 77,1)),),
              ],
            ),

          ),

          for(int i=1;i<=3;i++)
          Padding(
            padding: const EdgeInsets.only(top:8,bottom: 30,right:20,left: 20),
            child: InkWell(onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context)=>ProductDetail(product:this.product,index:i,pages: page, userName: this.userName,) ),
              );
            },
              child: Container(
                height: 500,
                color: Colors.white,
                child: Container(

                  child : Column(
                    //mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(product["product${i}_img"],height: 400,),
                    SizedBox(height: 10,),
                    Text(product["product${i}_name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(62, 70, 77,1)),),
                    SizedBox(height: 10,),
                    Text(product["product${i}_price"]+"L.E",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(62, 70, 77,1)),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for(int i=0;i<4;i++)
                        Icon(Icons.star_outlined,size: 20,color: Color.fromRGBO(251, 212, 65, 1),),
                        Icon(Icons.star_half_sharp,size: 20,color: Color.fromRGBO(251, 212, 65, 1),),
                      ],
                    ),
                  ],
                ),
                ),

              ),
            ),
          ),
          /*
          Container(
            width: 200,
            height: 100,
            color: Colors.green,
            child: Text("one"),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.black,
            child: Text("one"),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: Text("one"),
          ),
*/
          ],
        ),
      ),

    );
  }
}
