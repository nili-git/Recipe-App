import 'package:flutter/material.dart';
import 'package:recipeapp/detail2_recipe.dart';
import 'package:recipeapp/detail3_recipe.dart';
import 'package:recipeapp/detail4_recipe.dart';
import 'package:recipeapp/detail_recipe.dart';

void main() => runApp(MaterialApp(
      title: "The Recipe App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tasty Recipe",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.amber,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        /*
        actions: <Widget> [
          IconButton(icon: Icon(Icons.search),
           onPressed: () {}),
            IconButton(icon: Icon(Icons.favorite),
           onPressed: () {}),
          
            IconButton(icon: Icon(Icons.delete),
           onPressed: () {}),
        ],
        */
        actions: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/im.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
              "assets/poster.png",
                width: MediaQuery.of(context).size.width,
             // height: 400,
              //width: 500,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " Trending Recipe",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRecipe()));
            },
               child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                child: Text(" Chocolate cake with two ingredients ",
                                    style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    ),
                                    ),
                              ),
                              Icon(
                                Icons.favorite, color: Colors.pinkAccent)
                            ],
                          ),
                          
                          /*
                          Row(
                            children: [
                              Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                            ],
                          ),*/
                          SizedBox(height: 10),
                          Text(" ⭐⭐⭐⭐"),
                           SizedBox(height: 10),
                          Row(children: [
                            Text(" 45 min", style: TextStyle(
                              color: Colors.black54),
                              ),
                            Icon(Icons.timer, color: Colors.black54),
                          ],)
                        ],
                      ),
                    ),
                  ),

                   Positioned(
                     top: 5.0,
                     left: 18.0,
                     bottom:5.0,
                     child: ClipRRect(
                     borderRadius: BorderRadius.circular(12.0),
                     child: Image.asset("assets/cake.png",  width: 150.0),
                     ),
                   ),
                ],
              ),
          ),

       GestureDetector(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRecipe2()));
            },
                child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                child: Text(" Pancake with two ingredients ",
                                    style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    ),
                                    ),
                              ),
                              Icon(
                                Icons.favorite, color: Colors.black),
                            ],
                          ),
                          
                          /*
                          Row(
                            children: [
                              Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                            ],
                          ),*/
                          SizedBox(height: 10),
                          Text(" ⭐⭐⭐⭐"),
                           SizedBox(height: 10),
                          Row(children: [
                            Text(" 45 min", style: TextStyle(
                              color: Colors.black54),
                              ),
                            Icon(Icons.timer, color: Colors.black54),
                          ],)
                        ],
                      ),
                    ),
                  ),

                   Positioned(
                     top: 5.0,
                     left: 18.0,
                     bottom:5.0,
                     child: ClipRRect(
                     borderRadius: BorderRadius.circular(12.0),
                     child: Image.asset("assets/pancake1.png",  width: 150.0),
                     ),
                   ),
                ],
              ),
            ),


             GestureDetector(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRecipe3()));
            },
                child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                child: Text(" Burger with many ingredients ",
                                    style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    ),
                                    ),
                              ),
                              Icon(
                                Icons.favorite, color: Colors.black),
                            ],
                          ),
                          
                          /*
                          Row(
                            children: [
                              Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                            ],
                          ),*/
                          SizedBox(height: 10),
                          Text(" ⭐⭐⭐⭐"),
                           SizedBox(height: 10),
                          Row(children: [
                            Text(" 45 min", style: TextStyle(
                              color: Colors.black54),
                              ),
                            Icon(Icons.timer, color: Colors.black54),
                          ],)
                        ],
                      ),
                    ),
                  ),

                   Positioned(
                     top: 5.0,
                     left: 18.0,
                     bottom:5.0,
                     child: ClipRRect(
                     borderRadius: BorderRadius.circular(12.0),
                     child: Image.asset("assets/b1.png",  width: 150.0,)),
                   ),
                ],
              ),
            ),

            
             GestureDetector(
                  onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRecipe4()));
                      },
                child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120,
                                child: Text(" Pizza with many ingredients ",
                                    style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600,
                                    ),
                                    ),
                              ),
                              Icon(
                                Icons.favorite, color: Colors.black),
                            ],
                          ),
                          
                          /*
                          Row(
                            children: [
                              Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                                 Icon(
                                Icons.star, color: Colors.yellow,
                                ),
                            ],
                          ),*/
                          SizedBox(height: 10),
                          Text(" ⭐⭐⭐⭐"),
                           SizedBox(height: 10),
                          Row(children: [
                            Text(" 45 min", style: TextStyle(
                              color: Colors.black54),
                              ),
                            Icon(Icons.timer, color: Colors.black54),
                          ],)
                        ],
                      ),
                    ),
                  ),

                   Positioned(
                     top: 5.0,
                     left: 18.0,
                     bottom:5.0,
                     child: ClipRRect(
                     borderRadius: BorderRadius.circular(12.0),
                     child: Image.asset("assets/pizza.png",  width: 150.0,)),
                   ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
