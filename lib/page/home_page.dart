import 'dart:math';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("ABC dershanesi"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('KPSS SINIFI'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('YKS SINIFI'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: person.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: (() {}),
                child: PersonListCard(person: person[index]),
              )),
    );
  }
}
