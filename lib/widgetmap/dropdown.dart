import 'package:flutter/material.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class Dropdown extends StatelessWidget {
  const Dropdown(
      {Key? key,
      required this.listSatuanSuhu,
      required this.newValue,
      required this.onDropdownChange})
      : super(key: key);
  final List<String> listSatuanSuhu;
  final String newValue;
  final Function(dynamic) onDropdownChange;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: DropdownButton<String>(
        isExpanded: true,
        items: listSatuanSuhu.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          );
        }).toList(),
        value: newValue,
        onChanged: onDropdownChange,
      ),
    );
  }
}
