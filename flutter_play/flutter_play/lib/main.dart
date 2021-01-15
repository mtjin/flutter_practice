import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //바꿀수 없는 위젯
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JackJacE First App!!",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: "막내의 첫번째 플러터앱"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //바뀔수 있는 위젯
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("버튼을 눌러보세요!!"),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '증가',
        child: Icon(Icons.add),
      ),
    );
  }

  void _incrementCounter() {
    //카운터 증가
    setState(() {
      _counter++;
    });
  }
}
