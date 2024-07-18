import 'package:flutter/material.dart';
import 'package:flutter_app/final_project/login.dart';
import 'package:flutter_app/final_project/products.dart';


import 'cart.dart';
import 'checkout.dart';

class Home extends StatelessWidget {
  List page=[
    {

    },
  ];
  var userName;
  Home({List pages,var userName})
  {
      this.userName=userName;
      print(userName);
    this.page=pages;
    if(page==null) {
      this.page = [
        {
          'name': '',
          'qty':0,
          'price':'0',
          'img':'assets/image/w.jpg',
        },
      ];
    }

    print(page);
  }
List categories=[
  {
    "image" : "assets/image/cat-1.jpg",
    "title" : "Women Wear" ,
    "sub" : "3 Products",
    "product1_img" : "assets/image/blazer.jpg",
    "product1_name": "Women Blazer",
    "product1_price": "600 ",
    "product2_img" : "assets/image/t-shirt.jpg",
    "product2_name": "Women T-shirt",
    "product2_price": "200 ",
    "product3_img" : "assets/image/oversized.jpg",
    "product3_name": "Oversized t-shirt",
    "product3_price": "300 ",

  },
  {
    "image" : "assets/image/cat-4.jpg",
    "title" : "Skin Care" ,
    "sub" : "3 Products",
    "product1_img" : "assets/image/skin1.jpg",
    "product1_name": "The Ordinary",
    "product1_price": "600 ",
    "product2_img" : "assets/image/skin2.jpg",
    "product2_name": "Vitamin-C Scrup",
    "product2_price": "200 ",
    "product3_img" : "assets/image/skin3.jpg",
    "product3_name": "Tissue Mask",
    "product3_price": "300 ",

  },
  {
    "image" : "assets/image/product-1.jpg",
    "title" : "Electronics" ,
    "sub" : "3 Products",
    "product1_img" : "assets/image/cat1.jpg",
    "product1_name": "Camera Nikon",
    "product1_price": "20000 ",
    "product2_img" : "assets/image/iphone2.jpg",
    "product2_name": "Iphone 13",
    "product2_price": "30000 ",
    "product3_img" : "assets/image/product3.jpg",
    "product3_name": "Apple Watch",
    "product3_price": "3500 ",

  },
  {
    "image" : "assets/image/Men.jpg",
    "title" : "Men Wear" ,
    "sub" : "3 Products",
    "product1_img" : "assets/image/Men.jpg",
    "product1_name": "Long shirt Nike",
    "product1_price": "300 ",
    "product2_img" : "assets/image/Men2.jpg",
    "product2_name": "Men T-shirt",
    "product2_price": "200 ",
    "product3_img" : "assets/image/Men3.jpg",
    "product3_name": "Polo T-shirt",
    "product3_price": "300",

  },
];

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
            padding: const EdgeInsets.only(top:8.0,bottom: 30,right:8,left: 8),
            child: Container(
              //margin: EdgeInsets.all(8),

              height: 200,

              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/carousel-2.jpg")
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Shop Now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),
                            Text(" With Discounts Up to 70%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Colors.white),),
                          ],
                        )

                ],
              )

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 30,right:8,left: 8),
            child: Row(
              children: [
                Text("CATEGORIES ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1)),),
                Text("     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style:TextStyle(fontSize: 5,color: Color.fromRGBO(62, 70, 77,1)),),
              ],
            ),
          ),
          for(int i=0;i<categories.length;i++)
            //categories start
             Padding(
              padding: const EdgeInsets.only(top:8.0,bottom: 30,right:8,left: 8),
              child: InkWell(onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(BuildContext context)=>Products(product:categories[i],pages: this.page, userName: this.userName,) ),
                );
              },
                child: Container(


                  height: 100,
                  color: Colors.white,
                  child: Row(

                    children: [
                      Image.asset(categories[i]["image"]),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(categories[i]["title"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(62, 70, 77,1)),),
                          SizedBox(height: 10,),
                          Text(categories[i]["sub"] ,style: TextStyle(fontSize: 13,color: Colors.grey)),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            // categories end

          /*
          Container(
            width: 200,
            height: 100,
            color: Colors.black,
            child: Text("one"),
          ),
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