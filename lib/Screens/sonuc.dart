import 'package:flutter/material.dart';

class sonuc extends StatefulWidget {
  int score;
  sonuc({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<sonuc> {
  @override
  Widget build(BuildContext context) {
    if(widget.score>20){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/welldone.png'),
            width: 200, height: 200 ,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(

              child: Text(
                'Tebrikler Kazandınız, Puanınız',
                style: TextStyle(fontSize: 30),
              ),

    ),
    ),

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child:
              Text(
                '${widget.score}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),),

        ],
      ),
    );}
    else{
    return Scaffold(
    appBar: AppBar(
    title: Text('Sonuç'),
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image(
        image: AssetImage('images/fail.png'),
        width: 200, height: 200 ,
      ),
    Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Center(

    child: Text(
    'Üzgünüm Kaybettiniz, Puanınız',
    style: TextStyle(fontSize: 30),
    ),

    ),
    ),

    Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Center(
    child:
    Text(
    '${widget.score}',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
    ),
    ),),

    ],
    ),
    );
  }}
}
