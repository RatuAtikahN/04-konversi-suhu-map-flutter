import 'package:flutter/material.dart';
import 'package:stateful_widget_dan_map/widgetmap/input.dart';
import 'package:stateful_widget_dan_map/widgetmap/result.dart';
import 'package:stateful_widget_dan_map/widgetmap/dropdown.dart';
import 'package:stateful_widget_dan_map/widgetmap/listhasil.dart';

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

// Ratu Atikah Nurissobach - MI2C/20 - 2031710145
class _MyAppState extends State<MyApp> {
  List listHasil = [];
  var listSatuanSuhu = ['Kelvin', 'Reamur'];
  final inputController = TextEditingController();
  String _newValue = "Kelvin";
  double _inputUser = 0;
  double _result = 0;
  onDropdownChange(newValue) {
    setState(() {
      _newValue = newValue;
      perhitunganSuhu();
    });
  }

  // Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin") {
        _result = _inputUser + 273;
        listHasil.add('Kelvin : $_result');
      } else {
        _result = (4 / 5) * _inputUser;
        listHasil.add('Reamur : $_result');
      }
    });
  }

  // Ratu Atikah Nurissobach - MI2C/20 - 2031710145
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Pertemuan 4 Ratu Atikah N',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Konversi Suhu\nRatu Atikah N / 20"),
          ),
          body: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Input(inputController: inputController),
                Dropdown(
                  listSatuanSuhu: listSatuanSuhu,
                  newValue: _newValue,
                  onDropdownChange: onDropdownChange,
                ),
                Result(result: _result),
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Center(
                    child: Text(
                      'Riwayat Konversi',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ListHasil(listHasil: listHasil)
              ],
            ),
          )),
    );
  }
}
