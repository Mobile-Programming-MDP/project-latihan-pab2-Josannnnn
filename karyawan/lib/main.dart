import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :"Daftar Karyawan"
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home:const MyHomePage(),
    ),
  };
}
class MyHomePage extends StatelessWidget{
  const MyHomePage{(super.key)};
  Future<List<Karyawan>> readJsonData()async{
    String response = await rootBundle.loadString("assets/karyawan.json");
    final List<dynamic>data = json.decode(response);
    return data.map((json)) => Karyawan.fromJson((json)).toList();
  }

  @override
  Widget build(BuildContext context ){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Daftar Karyawan"),
      ),
      body: FutureBuilder<list<Karyawan>>{
        future : readJsonData(),
        Builder: (context,snapshot){

        }
      }
    ),
  }
}