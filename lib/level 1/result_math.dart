import 'package:flutter/material.dart';
import 'package:learn/level 2/subjects/Math.dart';
class Result extends StatefulWidget {
  final int score;
  const Result({super.key,  required this.score});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Results" ,
          style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold))
        ),
      body: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text("Congratulations", style: TextStyle(color:Colors.black, fontSize: 35, fontWeight: FontWeight.bold)),

          SizedBox(height: 10),
          Text("Your score is:",  style: TextStyle(color:Colors.red, fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("${widget.score}",  style: TextStyle(color:Colors.orange, fontSize: 35, fontWeight: FontWeight.bold)),
          SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  elevation: 0.0,
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Math()));
                  }  ,child: Text("Retry" ,  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),
                SizedBox(width: 20),
                MaterialButton(
                  elevation: 0.0,
                  onPressed: () {
    if(60 <= widget.score){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Math()));
                  }  },child: Text("Level 2" ,  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),),

              ],
            ),
          )



        ],
      ),)
      );

  }
}
