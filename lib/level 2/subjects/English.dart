import 'package:flutter/material.dart';
import 'package:learn/level 2/result_eng.dart';
import 'package:learn/level 2/data/english_list.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English > createState() => _EnglishState();
}

class _EnglishState extends State<English > {
  PageController?  _controller= PageController(initialPage: 0);
  bool isPressed=false;
  Color isTrue=Colors.green;
  Color  isWrong= Colors.red;
  Color btnColor=Colors.yellow;
  int score= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text("learn English",
          style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
          padding: EdgeInsets.all(18),
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics() ,
            controller: _controller!,
            onPageChanged: (page) {
              setState(() {
                isPressed=false;
              });
            },
            itemCount: questions.length,
            itemBuilder:(context, index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Card(
                          elevation: 4,
                          shadowColor: Colors.red,
                          color: Colors.blueGrey,
                          child: Text("Question ${index +1}/ ${questions.length}", style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),))),
                  Divider(color: Colors.blue,
                    height: 5,
                    thickness: 1.0,
                  ),
                  SizedBox(height: 8,),
                  Text(questions[index].question!, style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold), ),
                  SizedBox(height: 8,),
                  for(int i=0; i<questions[index].answer ! .length; i++)
                    Container(
                      width: double.infinity,
                      child: MaterialButton(
                        shape: StadiumBorder(), color:isPressed? questions[index].answer!.entries.toList()[i].value
                          ? isTrue
                          :isWrong
                          : Colors.blue,

                        onPressed: isPressed? () {}:
                            () {
                          setState(() {
                            isPressed=true;});
                          if(questions[index].answer!.entries.toList()[i].value){
                            score+=10;
                            print("$score");


                          }
                        },
                        child: Text(questions[index].answer!.keys.toList()[i]),
                      ),
                    )
                  ,
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(onPressed:
                      isPressed? index+1 ==questions.length?() {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(score: score),
                          ),
                        );

                      }:()    {
                        _controller!.nextPage(duration: Duration(milliseconds: 30), curve: Curves.linear);
                        setState(() {
                          isPressed=false;
                        });
                      }: null,
                          child: Text(index+1 ==questions.length?"see results"
                              :"Next question",
                            style: TextStyle(color:Colors.black, fontSize: 25, fontWeight: FontWeight.bold),)),
                    ],
                  )
                ],

              );

            },)
      ),
     
    );
  }
}
