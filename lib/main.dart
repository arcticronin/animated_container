// Flutter code sample for AnimatedContainer

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the [height], [width], [color], and
// [alignment] properties when tapped.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

// I use a StatefulWidget, i can use a setState() function
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },


      child: Center(
        child: AnimatedContainer(
          alignment: selected ? Alignment.topCenter : Alignment.bottomCenter,
          //width: selected ? 200.0 : 500.0,
          //height: selected ? 100.0 : 300.0,
          height: 500,
          color: selected ? Colors.red : Colors.blue,
          //alignment:
          //selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: Duration(seconds: 2),
          //curve: Curves.elasticInOut,
          child: Image(
              image: AssetImage('images/dartIcon.png')),
        ),
      ),
    );
  }
}