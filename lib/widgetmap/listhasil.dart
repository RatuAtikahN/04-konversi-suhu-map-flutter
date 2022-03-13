import 'package:flutter/material.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class ListHasil extends StatelessWidget {
  const ListHasil({
    Key? key,
    required this.listHasil,
  }) : super(key: key);
  final List listHasil;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: listHasil.map((value) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              value.toString(),
              style: const TextStyle(fontSize: 15),
            ),
          );
        }).toList(),
      ),
    );
  }
}
