import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());
//site da onde está vindo as imagens:http://btv.melezinek.cz/binary-search-tree.html
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Pra tirar aquela faixa vermelho de debug do canto de cima
      theme: ThemeData(primaryColor: Colors.blue),
      home: homePage(),
    );
  }
}


