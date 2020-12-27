import 'package:flutter/material.dart';
import 'package:merthan_quiz/Screens/ilksayfa.dart';
import 'package:merthan_quiz/Screens/ikincisayfa.dart';
void gotoQuizPage(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => QuizPage()
  ));
}
void gotoQuizPage2(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => QuizPage2()
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QuizApp')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/anasayfa.png'),
            width: 200, height: 200 ,
          ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text('Aşağıdaki butonlardan Quizlerimize erişebilirsiniz...',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          RaisedButton(onPressed: (){gotoQuizPage(context);},
            color: Colors.blueGrey,
            child: Text('Birinci Quizz'),
          ),

          Container(
              padding: EdgeInsets.all(20)),

          RaisedButton(onPressed: (){gotoQuizPage2(context);},
            color: Colors.blueGrey,
            child: Text('İkinci Quizz'),
          ),
        ],
      ),
    );
  }
}
