import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furima_app/views/monitor.dart';

//appbar リスト表示
class Watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.black,
          leading:
              Icon(CupertinoIcons.search, color: CupertinoColors.activeBlue),
          middle: Text(
            'ウォッチ',
            style: TextStyle(color: Colors.blue),
          ),
          trailing: CupertinoButton(
            child: Icon(CupertinoIcons.plus, color: CupertinoColors.activeBlue),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    return Monitor();
                  },
                ),
              );
            },
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                CupertinoSearchTextField(
                  onChanged: (String value) {
                    print('The text has changed to: $value');
                  },
                  onSubmitted: (String value) {
                    print('Submitted text: $value');
                  },
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: listTiles.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(
                      color: Colors.black,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return listTiles[index];
                    },
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

  //リスト一覧
  static const List<Widget> listTiles = const <Widget>[
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('うし'),
    ),
    ListTile(
      leading: Icon(Icons.dehaze_sharp),
      title: Text('ねこ'),
    ),
  ];
}
