import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BmiMain(),
    );
  }
}

class BmiMain extends StatefulWidget {
  @override
  _BmiMainState createState() => _BmiMainState();
}

class _BmiMainState extends State<BmiMain> {
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(title:Text('비만도 계산기')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child:Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:'키',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:'몸무게',
                ),
                keyboardType: TextInputType.number,
              ),
              Container(
                margin: const EdgeInsets.only(top:16.0),
                alignment: Alignment.centerRight,
                child:RaisedButton(
                  onPressed:(){
                    if(_formKey.currentState.validate()){
                      // 검증시 처리 코드
                    }
                  },
                  child: Text('결과 보기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BmiResult extends StatelessWidget {
  final double height;
  final double weight;

  BmiResult(this.height, this.weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('비만도 계산기')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('정상', style:TextStyle(fontSize: 36),
            ),
            SizedBox(height:16,),
            Icon(
              Icons.sentiment_satisfied,
              color:Colors.green,
              size:100,
            ),
          ],
        ),
      ),
    );
  }
}

