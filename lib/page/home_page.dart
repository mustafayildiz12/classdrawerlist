import 'package:denemelist/data/person_data.dart';
import 'package:denemelist/widget/personlistcard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int showDrawer = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ABC dershanesi"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('KPSS SINIFI'),
                onTap: () {
                  var myNewKpssList =
                      myPersonList.where((element) => element.branch == 'KPSS');
                  print(myNewKpssList.length);
                },
              ),
              ListTile(
                title: const Text('YKS SINIFI'),
                onTap: () {
                  var myNewYksList =
                      myPersonList.where((element) => element.branch == 'YKS');
                  print(myNewYksList.length);
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: myPersonList.length,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: (() {}),
                  child: PersonListCard(person: myPersonList[index]),
                )),
      ),
    );
  }
}
