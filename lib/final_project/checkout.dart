import 'package:flutter/material.dart';



import '../final_project/login.dart';
import 'cart.dart';
import 'home.dart';


class CheckOut extends StatelessWidget {
  var name=TextEditingController();
  var email=TextEditingController();
  var phone=TextEditingController();
  var address=TextEditingController();
  var country=TextEditingController();
  var city=TextEditingController();
  bool visa =false;
  bool cash=false;
  List page=[];
  var userName;
  CheckOut({List pages, var userName})
  {
    this.userName=userName;
    this.page=pages;
    print(page);
  }
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
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
            //title Billing Address
            Padding(
              padding: const EdgeInsets.only(top:10.0,bottom: 20,right:8,left: 8),
              child: Row(
                children: [
                  Text("BILLING ADDRESS ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1)),),
                  Text("     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _",style:TextStyle(fontSize: 5,color: Color.fromRGBO(62, 70, 77,1)),),
                ],
              ),
            ),
            //el textform hardcode
            Container(
              color: Colors.white,
              width: 5,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: name,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(width: 3,color: Colors.grey),

                        ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter full name',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.person,color: Colors.grey,)

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: email,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color: Colors.grey),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: 'example@email.com',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter email',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.email,color: Colors.grey,)

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: phone,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color: Colors.grey),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: '+123 456 789',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter phone number',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.phone,color: Colors.grey,)

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: address,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color: Colors.grey),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: '123 Street',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter address',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.add_location_alt,color: Colors.grey,)

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: country,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color: Colors.grey),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: 'Country',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter country',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.wrong_location,color: Colors.grey,)

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 30,right:50,left: 50),
                    child: TextFormField(
                      controller: city,
                      style: TextStyle(color:Color.fromRGBO(62, 70, 77,1)),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color: Colors.grey),

                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(width: 3,color:Color.fromRGBO(251, 212, 65, 1)),
                          ),

                          labelText: 'city',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'enter city',
                          prefixIcon: Icon(Icons.edit,color: Colors.grey,),
                          suffixIcon: Icon(Icons.add_location_alt,color: Colors.grey,)

                      ),
                    ),
                  ),
                ],
              ),
            ),
            //title Order Total
            Padding(
              padding: const EdgeInsets.only(top:20.0,bottom: 20,right:8,left: 8),
              child: Row(
                children: [
                  Text("ORDER TOTAL ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color.fromRGBO(62, 70, 77,1)),),
                  Text("     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ",style:TextStyle(fontSize: 5,color: Color.fromRGBO(62, 70, 77,1)),),
                ],
              ),
            ),
            //design el order total

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

                ],
              ),
            ),
            //title Order Total
            //design el pyment

            //buttom
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  MaterialButton(onPressed: () {
                    this.page = [
                      {
                        'name': '',
                        'qty':0,
                        'price':'0',
                        'img':'assets/image/w.jpg',
                      },
                    ];
                    print(page);
                    Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Home(pages: page, userName: this.userName,)));
                  },
                      color: Colors.yellow,
                      child: Text("Place Order", style: TextStyle(color: Colors.black))),
                ],
              ),


            ),
          ],
        ),

      ),
    );
  }
}
