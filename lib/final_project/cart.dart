




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../final_project/counter_logic.dart';
import '../final_project/counter_state.dart';
import '../final_project/login.dart';
import 'checkout.dart';
import 'home.dart';

class Cart extends StatelessWidget{
  @override
  List page=[];
  var userName;
  Cart({List pages,var userName}){
    this.userName=userName;
  this.page=pages;
  print(this.page);
  }
  List bord=[
    {
      'txt':'Products',
    },
    {
      'txt':'Price',
    },
    {
      'txt':'Quantity',
    },
    {
      'txt':'Total',
    },
  ];
  List data=[
    {
      'img':'assets/image/product-1.jpg',
      'name':'camera',
      'price':'3000',
      'qty':'1',

    },
    {
      'img':'assets/image/product-2.jpg',
      'name':'Hoodie',
      'price':'3000',
      'qty':'2',
    },
    {
      'img':'assets/image/product-4.jpg',
      'name':'camera',
      'price':'3000',
      'qty':'1',
    },
    {
      'img':'assets/image/product-5.jpg',
      'name':'Camera',
      'price':'3000',
      'qty':'3',
    },
    {
      'img':'assets/image/product-6.jpg',
      'name':'camera',
      'price':'3000',
      'qty':'2',
    },

  ];
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    print(size);
    return BlocProvider(
        create: (context)=>CounterCubit(),
        child: BlocConsumer<CounterCubit,CounterState>(
        listener:(context,state){} ,
        builder: (context,state){
        var obj=CounterCubit.getObject(context);
        obj.c=0;
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

      body: Container(color:const Color(0xFFF5F5F5),
          padding: EdgeInsets.only(top: 10),

         child: SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
            children: [

              Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color:Color.fromRGBO(62, 70, 77,1),
                border: Border.all(),
              ),
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for(int i=0;i<bord.length;i++)
                  Row(
                    children: [
                      Text(bord[i]['txt'] , style: TextStyle(fontSize: 17,color: Colors.white),),
                      VerticalDivider(color: Colors.white,),
                    ],
                  ),
                ],
              ),
              ),
              Container(
                child: Column(
                  children: [

                        for(int i=0;i<page.length;i++)


                          Container(
                           decoration: BoxDecoration(color: Colors.white,
                            border: Border(right:BorderSide(color:const Color(0xFFF5F5F5), width: 10),
                              left: BorderSide(color:const Color(0xFFF5F5F5), width: 10),
                                top: BorderSide(color:const Color(0xFFF5F5F5), width: 10)),
                                 ),

                               child: Row(
                                children: [

                                  SizedBox(width: 20,),

                                   Container(
                                     child: Column(
                                       children: [

                                         Image.asset(page[i]['img'],width: 50) ,
                                          Text(page[i]['name']),
                                         Divider(),
                                       ],
                                     ),
                                   ),


                                  Padding(padding: EdgeInsets.only(right: size-(size/1.04))),
                                  Expanded(flex: 1,child: Container(child: Text(page[i]['price'],style: TextStyle(fontSize: 17)))),
                                  //Padding(padding: EdgeInsets.only(right: size-(size/1.1))),
                                  Expanded(flex: 1,
                                    child: Container(
                                      child: Row(
                                        children: [
                                          InkWell(onTap: () {
                                            if(page[i]['qty']>1)
                                            obj.munsC();
                                            page[i]['qty']=(obj.c+page[i]['qty']);
                                            obj.c = 0;
                                          },child: Container(width: 15,height: 15,color:Color.fromRGBO(251, 212, 65, 1),child: Icon(Icons.remove,size: 15,color: Colors.black,))),
                                          Container(decoration: BoxDecoration(color: Colors.white,
                                            border: Border.all(width: 5,color: Colors.white ),
                                          ),
                                            child: Text((obj.c+page[i]['qty']).toString(),style: TextStyle(fontSize: 15)),
                                          ),
                                          InkWell(onTap: () { obj.plusC();
                                          page[i]['qty']=(obj.c+page[i]['qty']);
                                          obj.c=0;


                                          },child: Container(width: 15,height: 15,color:Color.fromRGBO(251, 212, 65, 1),child: Icon(Icons.add,size: 15,color: Colors.black,))),

                                        ],
                                      ),
                                    ),
                                  ),
                                  //Padding(padding: EdgeInsets.only(right: size-(size/1.17))),
                                  Expanded(flex: 1,child: Container(child: Text('${tot(page[i]['price'],page[i]['qty'])}',style: TextStyle(fontSize: 17)))),

                                ],

                            ),
                             ),

                  ],
                ),
              ),
              Divider(height: 40),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text('CART SUMMARY',style: TextStyle(fontSize: 20,color: Color(0xFF3E464D), fontWeight: FontWeight.bold),),
                  VerticalDivider(width: 40,),
                  Text('--------------------------',style: TextStyle(fontSize: 20,color: Colors.grey),)
                ],
              ),

              Container(decoration: BoxDecoration(color: Colors.white,
                border: Border.all(width: 10,color:const Color(0xFFF5F5F5) ),

              ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),

                     Row(
                       children: [
                         Padding(padding: EdgeInsets.only(right: 20)),
                         Text('Subtotal'),

                         VerticalDivider(width: size-(size/2)),
                         Text('${subt(page)}'+'L.E'),
                       ],
                     ),
                      Divider(color: Colors.white,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Text('Shipping'),

                          VerticalDivider(width: size-(size/2)),
                          Text('50'+'L.E'),
                        ],
                      ),
                      Divider(endIndent: 25,indent: 25,height: 30),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 20)),
                          Text('Total',style: TextStyle(fontSize: 20)),

                          VerticalDivider(width: size-(size/2)),
                          Text('${subt(page)+50}'+'L.E',style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Divider(color: Colors.white,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(right: 20)),
                          MaterialButton(onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder:(BuildContext context)=>CheckOut(pages: page, userName: this.userName,) ),
                            );
                          },

                             color:Color.fromRGBO(251, 212, 65, 1),
                            child: Text('Proceed To Checkout'),
                          )
                        ],
                      ),
                    ],
                  ),
              )
            ],
        ),
         )
      ),
    );

  }
    )
    );
}
}
int tot(String price,int qty)
{

  int t=int.parse(price)*qty;
  return t;
}
int subt(List L)
{
  int t=0;
  for(int i=0;i<L.length;i++)
    {
      t+=tot(L[i]['price'],L[i]['qty']);
    }
  return t;
}
int trans(String qty)
{
  return int.parse(qty);
}