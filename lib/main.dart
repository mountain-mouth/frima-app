import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'views/watch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: new FurimaApp(),
    );
  }
}

class FurimaApp extends StatefulWidget {
  @override
  _FurimaApp createState() => new _FurimaApp();
}

class _FurimaApp extends State<FurimaApp> {
  @override
  void initState() {
    super.initState();

    Future(() async {
      await Future.delayed(Duration(seconds: 2));
      Navigator.push(context, CupertinoPageRoute(builder: (context) {
        return Watch();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
        home: CupertinoPageScaffold(
      child: Center(
        child: Image.asset('images/umineko.jpg'),
      ),
    ));
  }
}
