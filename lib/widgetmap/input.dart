import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.inputController,
  }) : super(key: key);
  final TextEditingController inputController;
// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'Masukkan suhu dalam celcius',
      ),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }
}
