import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: const QuizPage(),
    ),
  ));
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}
class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "this is where the question text will appear",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,fontSize: 25),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  textStyle: TextStyle(color: Colors.white, fontSize: 20,),),
              onPressed: () {
                setState((){
                  scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
                });
              },
              child: const Text("True",),

          ),
        )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.white,
                    textStyle: TextStyle(color: Colors.white, fontSize: 20,),),
                onPressed: () {
                  setState((){
                    scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
                  });
                },
                child: const Text("False")),
          ),
        ),
        //TODO: Create a row to display user's answers(Score Keeper)
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
