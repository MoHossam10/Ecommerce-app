import 'package:flutter/material.dart';
import 'package:flutter_app/final_project/cart.dart';
import 'package:flutter_app/final_project/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../final_project/counter_logic.dart';
import '../final_project/counter_state.dart';
import '../final_project/login.dart';
import 'checkout.dart';

class ProductDetail extends StatelessWidget {

  int index;
  Map product;
  List page=[];
  var userName;
  ProductDetail({Map product,int index,List pages,var userName})
  {
    this.userName=userName;
    this.product=product;
    this.index=index;
    print(index);
    //print(product);
this.page=pages;
    print(page);
    print(product["title"]);
    print(product["product${index}_name"]);


  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>CounterCubit(),
        child: BlocConsumer<CounterCubit,CounterState>(
        listener:(context,state){} ,
    builder: (context,state){
    var obj=CounterCubit.getObject(context);
    //obj.c=1;
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

    child: ListView(
    physics: BouncingScrollPhysics(),
    children: [

    Padding(
    padding: const EdgeInsets.only(top: 30,right: 10,left: 10),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [

    Text("Product Details",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1)),),
    Text("     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ",style:TextStyle(fontSize: 5,color: Color.fromRGBO(62, 70, 77,1)),),
    ],
    ),
    ),


    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
    child: Container(
    color: Colors.white,
    child: Column(
    children: [
    Image.asset(product["product${index}_img"],height: 400,),

    ],
    ),
    ),
    ),

    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30,),
    child: Container(
    color: Colors.white,
    child: Column(
    children: [
    SizedBox(height: 20,),
    Text(product["product${index}_name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(62, 70, 77,1))),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    for(int i=0;i<4;i++)
    Icon(Icons.star_outlined,color: Color.fromRGBO(251, 212, 65, 1),),
    Icon(Icons.star_half_outlined,color: Color.fromRGBO(251, 212, 65, 1),),

    ],
    ),
    SizedBox(height: 10,),
    Text(product["product${index}_price"]+"L.E",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color.fromRGBO(62, 70, 77,1)),),
    SizedBox(height: 10,),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Text("Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet si clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no seaNonumy",style: TextStyle(fontSize: 15,color: Color.fromRGBO(62, 70, 77,1)),),
    ),
    SizedBox(height: 20,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

    InkWell( onTap: (){if(obj.c>1)obj.munsC();
    },
        child: Container(width: 40,height: 40,color: Color.fromRGBO(251, 212, 65, 1),child: Icon(Icons.remove,size: 15,color: Colors.black,))),
    SizedBox(width: 20,),
    Container(
    //color: Color.fromRGBO(245, 245, 245,1),
    child: Text(obj.c.toString(),style: TextStyle(fontSize: 20)),
    ),
    SizedBox(width: 20,),
    InkWell(onTap: (){obj.plusC();
    },
        child: Container(width: 40,height: 40,color: Color.fromRGBO(251, 212, 65, 1),child: Icon(Icons.add,size: 15,color: Colors.black,))),
    SizedBox(width: 40,),
    MaterialButton(onPressed:(){page.add({'name':'${product["product${index}_name"]}','img':'${product["product${index}_img"]}','price':'${product["product${index}_price"]}','qty':obj.c});if(page[0]['name']=='')page.removeAt(0);},
    child: Text("Add To Cart", style: TextStyle(fontSize: 15,color: Color.fromRGBO(62, 70, 77,1) ) ),
    color: Color.fromRGBO(251, 212, 65, 1) ,
    ),
    ],
    ),
    ],
    ),
    ),
    ),

    ],
    ),
    ),

    );

    }
        )
    );
  }
}

