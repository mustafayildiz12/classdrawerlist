import 'package:denemelist/data_parameter/person_parameter.dart';
import 'package:flutter/material.dart';

class PersonListCard extends StatelessWidget {
  final Person person;
  const PersonListCard({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(children: [
        Expanded(
            flex: 2,
            child: Column(children: const [
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )
            ])),
        Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${person.name} ${person.suranme}",
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                ),
                Text(
                  person.lesson,
                  style: const TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ],
            )),
        Expanded(flex: 2, child: Container())
      ]),
    );
  }
}
