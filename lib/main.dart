
import 'package:flutter/material.dart';
import 'package:learn/level 1/subjects/English.dart';
import 'package:learn/level 1/subjects/Math.dart';
void main(){ 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext
  context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("School",
              style:TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)
          ),
            Text("Quiz",
                style:TextStyle(color: Colors.orange, fontSize: 25, fontWeight: FontWeight.bold)
            ),

          ],

        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                        Container(
              child:const Image(
                  image: AssetImage("assets/students.png")),
            ),
            Card(
              shadowColor: Colors.blue,
              elevation: 4.0,
              color: Colors.white,
              child: Container(
                child:const Text("Welcome to faster learning",  style:TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,)),
              ),
            ),
            Card(
              shadowColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 4.0,
              child: Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CircleAvatar(
                    radius:30,
                    backgroundImage: AssetImage("assets/avatar.jpeg"),
                  ),
                  SizedBox(width: 30),
                    Column(
                      children: [
                        Text("Hi, Pupil", style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                        Text("Let's start the game")
                      ],
                    )
              
              
                ],),
              ),
            ),

            const SizedBox(height: 40,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              GestureDetector(
                 onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>English()));
        },
                child: Card(
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 4.0,
                color: Colors.yellow,
                child: Column(
                  children: [
                    const Image(
                      width: 120,
                          
                        image: AssetImage("assets/eng.jpeg")),
                     MaterialButton(
                      onPressed: () {
                       
                      }, child: const Text("English",
                        style:TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)
                    ), ),
                  ],
                ),
                          
                              ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Math()));
        
                },
                child: Card(
                  shadowColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4.0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Image(
                          width: 120,
                          
                          image: AssetImage("assets/math.jpeg")),
                      MaterialButton(
                        onPressed: () {
                         
                        }, child: const Text("Mathematics",
                          style:TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)
                      ), ),
                    ],
                  ),
                          
                ),
              ),],
          ),
        ),
        SizedBox(height: 35,),
        Text("By group three",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

          ],
        ),
      ),
      );
  

  }
}
