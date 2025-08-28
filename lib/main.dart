import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:my_app/main-backup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Date Picker ",
      home: MyHomePage(title: "Date Picker"),
    );
  }  
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  // variabel/state utuk menampung tanggal yang dipilih
  DateTime selectedDate = DateTime.now();

  // inisialisasi SelectDate Flutter
  Future<void> _selectDate(BuildContext context) async {
    // inisial dateTIme final Picked
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // tanggal awal yang dipilih
      firstDate: DateTime(2015, 8), // tanggal awal yang bisa dipilih
      lastDate: DateTime(2101), // tanggal akhir yang bisa dipilih
    );
    if (picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split('')[0]),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                // ignore: avoid_print
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: const Text("Pilih Tanggal"),
            )
          ],
        ),
      ),
    );
  }
}