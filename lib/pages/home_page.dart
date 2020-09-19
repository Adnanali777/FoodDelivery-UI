import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.5),
        child: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Choose Your Meal'),
          centerTitle: true,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('What Are You Looking For?',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 50.5,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 235, 235, 3),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(Icons.search),
                        ),
                        hintText: "Search Your Favourite Dish",
                        hintStyle: TextStyle(fontSize: 17,color: Colors.grey[500]),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        child: Text('Top Categories',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  height: 120,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        categoriescard('assets/pizza-3.png' , 'Pizza'),
                        categoriescard('assets/burger-2.png' , 'Burger'),
                        categoriescard('assets/strawberry.png' , 'Fruits'),
                        categoriescard('assets/eggplant.png' , 'Veggies'),
                        categoriescard('assets/chicken.png' , 'Chicken'),
                      ]
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text('Nearby Restaurants',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),
                  ),
                ),
                Card_layout('assets/restaurant-1.jpg', 'Handi Restaurant','Chinese , Continental , Indian' ,'Sector-3 , Aliganj , Lucknow'),
                Card_layout('assets/restaurant-2.jpg', 'The Kalika Hut','Chinese , Indian , Mughlai' ,'Vibhuti Khand , Gomti Nagar , Lucknow'),
                Card_layout('assets/restaurant-3.jpg', 'Aryans Family Restaurant','Chinese , Italian , Indian' ,'Sector-1 , Vikas Nagar , Lucknow'),
                Card_layout('assets/restaurant-4.jpg', 'Curry Leaf','Italian , Continental , Indian' ,'MG Road , Hazratganj , Lucknow'),
                Card_layout('assets/restaurant-5.jpg', 'Lakh Nawabi Restaurant','Mughlai , Continental , Indian' ,'Vasu Khand , Gomti Nagar , Lucknow'),


                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget categoriescard(image , text) {
  return GestureDetector(
    onTap: (){
      print('tapped');
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 10 ),
      padding: EdgeInsets.all(1),
      height: 90,
      width: 100,
      decoration:  BoxDecoration(
        borderRadius:  BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height:80 ,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Text(text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Card_layout (image , text1, text2 , text3){
  return  Card(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Container(
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(text1,
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 1.1,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Icon(Icons.location_on),
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text(text2,
                    textAlign: TextAlign.center,
                  ),
                  Text(text3),
                ],
              ),

            ],
          ),
        ],
      ),

    ),
  );
}