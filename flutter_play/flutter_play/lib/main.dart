import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("버튼을 눌러보세요!!"),
            Text("Counter", style: Theme
                .of(context)
                .textTheme
                .display1,)
          ],)
    )
    );
  }
}
