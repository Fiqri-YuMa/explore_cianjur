import 'package:flutter/material.dart';

class pertemuan6 extends StatelessWidget {
  const pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pertemuan 6 List Views'),
          bottom: TabBar(tabs: [
            Tab(
              text: 'listview',
            ),
            Tab(
              text: 'listview.builder',
            ),
            Tab(
              text: 'listview.separated',
            ),
          ]),
        ),
        body: TabBarView(
          children: [ContohListView(), clistviewsB(), cListviewSeparated()],
        ),
      ),
    );
  }
}

class ContohListView extends StatelessWidget {
  final List<int> numberlist = [1, 2, 3, 4, 5, 6, 7];
  ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberlist.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.green, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class clistviewsB extends StatelessWidget {
  final List<int> numberlist = [1, 2, 3, 4, 5, 6, 7];
  clistviewsB({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: numberlist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.yellow, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberlist[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        });
  }
}

class cListviewSeparated extends StatelessWidget {
  final List<int> numberlist = [1, 2, 3, 4, 5, 6, 7];
  cListviewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.blue, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberlist[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Container(
          height: 15,
          color: Colors.pink,
        );
      },
      itemCount: numberlist.length,
    );
  }
}
