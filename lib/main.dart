import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Home(),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded, color: Colors.black,),
          onPressed: (){},
        ),
      ),
      body: SafeArea(
          child:Column(

            children: [
              Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Find Your',
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Text('Inspiration',
                    style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.manage_search, color: Colors.black87,),
                          hintText: "search what you looking for",
                          hintStyle: TextStyle(color: Colors.black87, fontSize: 15)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Promo Today',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                promoCard('images/imag1.jpg'),
                                promoCard('images/imag2.jpg'),
                                promoCard('images/imag3.jpg'),
                                promoCard('images/imag4.jpg'),
                                promoCard('images/imag6.jpg'),
                                promoCard('images/imag7.jpg'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage('images/imag5.jpg'),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: [0.3, 0.9],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ]
                            )
                        ),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Center(child: Text('Best Food', style: TextStyle(fontSize: 20, color: Colors.black),)),
                          ),
                        ),

                      ),
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
  Widget promoCard(image){
    return AspectRatio(
      aspectRatio: 2.62/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: AssetImage(image),
        )
      ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1, 0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ]
            )
          ),

        ),
    ),
    );

  }
}


