import 'package:flutter/material.dart';
import 'stepview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(// 导航栏
            backgroundColor: Colors.blue,
            title: Text('StepsView'),
            elevation: 0,
          ),
          body: Container(
            child: Column(
                children: <Widget>[
                  StepCell(),

                ]
            ),
          )
      ),
    );
  }
}
class StepCell extends StatefulWidget {
  @override
  _StepCellState createState() => _StepCellState();
}

class _StepCellState extends State<StepCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row( // 这里如需要滚动就改成 ListView
        // scrollDirection: Axis.horizontal,
        children: [
          StepCircle(
            containerwidth: MediaQuery.of(context).size.width/4,
            containerheight: 100,
            num: '1',
            text: '占位文字',
            bgcolor: Colors.lightBlue.shade700,
            numcolor: Colors.white,
          ),
          StepCircle(
            containerwidth: MediaQuery.of(context).size.width/4,
            containerheight: 100,
            num: '2',
            text: '占位文字',
            bgcolor: Colors.lightBlue.shade200,
          ),
          StepCircle(
            containerwidth: MediaQuery.of(context).size.width/4,
            containerheight: 100,
            num: '3',
            text: '占位文字',
            bgcolor: Colors.lightBlue.shade200,
          ),
          StepCircle(
            containerwidth: MediaQuery.of(context).size.width/4,
            containerheight: 100,
            num: '4',
            text: '占位文字',
            bgcolor: Colors.lightBlue.shade200,
          ),
        ],
      ),
    );
  }
}

