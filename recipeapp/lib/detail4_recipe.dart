import 'package:flutter/material.dart';

class DetailRecipe4 extends StatefulWidget {
  @override
  _DetailRecipe4State createState() => _DetailRecipe4State();
}

class _DetailRecipe4State extends State<DetailRecipe4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SingleChildScrollView(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Stack(
              children: [
                Image.asset("assets/pizza.png", width: 500.0, height: 300.0),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 30.0),
                  child: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black, size: 30.0,),
                   onPressed: () {
                     Navigator.pop(context);
                   }),
                )
              ],
            ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 250.0,
                        child: Text("Pizza with many ingredients ",
                            style: TextStyle(
                                fontSize: 20.0,fontWeight: FontWeight.bold ),
                                ),
                                ),
                                Icon(Icons.favorite_border, color: Colors.pinkAccent, size: 40.0,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:10.0, right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("⭐⭐⭐⭐", 
                    style: TextStyle(fontSize: 20.0)
                    ),
                   SizedBox(height: 20),
                Text("1.Preheat oven to 350 degrees F (175 degrees C). Grease and flour a 9x9 inch pan or line a muffin pan with paper liners.",
                style: TextStyle(fontSize: 20.0, wordSpacing: 2.0,),
                ),
                SizedBox(height: 20),
                Text("2.In a medium bowl, cream together the sugar and butter. Beat in the eggs, one at a time, then stir in the vanilla.",
                style: TextStyle(fontSize: 20.0, wordSpacing: 2.0),
                ),
                SizedBox(height: 20),
                Text("3. Bake for 30 to 40 minutes in the preheated oven.",
                style: TextStyle(fontSize: 20.0, wordSpacing: 2.0),
                ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
