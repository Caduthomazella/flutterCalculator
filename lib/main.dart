import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = '';
  double number1 = 0.0;
  double number2 = 0.0;

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        labelText: '1º numero',
        labelStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
      ),
      onChanged: (value) {
        number1 = double.parse(value);
      },
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        labelText: '2º numero',
        labelStyle: TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.5)),
      ),
      onChanged: (value) => number2 = double.parse(value),
    );

    RaisedButton submit = RaisedButton(
      child: Text('Enviar'),
      color: Colors.deepPurpleAccent,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      onPressed: () {
        setState(() {
          double calc = number1 + number2;
          this.result = "Total: $calc";
        });
      },
    );

    Text result = Text(
      this.result,
      style: TextStyle(color: Colors.grey),
    );

    Padding separator = Padding(
      padding: EdgeInsets.all(4.0),
    );

    Column columns = Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: submit,
          width: double.infinity,
        ),
        separator,
        result,
      ],
    );

    return MaterialApp(
      title: 'Calculadora',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: columns,
        ),
      ),
    );
  }
}
