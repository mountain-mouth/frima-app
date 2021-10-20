import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Monitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.black,
          middle: Text(
            'ウォッチ作成編集',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Text('モニター名'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'モニター名',
                  ),
                ),
                Text('出品者情報'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '出品者情報',
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.visibility),
              label: 'ウォッチ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '検索',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '設定',
            ),
          ],
          selectedItemColor: CupertinoColors.systemBlue,
          unselectedItemColor: CupertinoColors.inactiveGray,
          backgroundColor: CupertinoColors.black,
        ),
      ),
    );
  }
}
