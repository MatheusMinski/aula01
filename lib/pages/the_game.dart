import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class the_game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 203, 236, 241),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "How To Tree",
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }
}

_body(context) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _titulo(),
        _verticalSpace(),
        _verticalSpace(),
        _texto(),
        _verticalSpace(),
        _verticalSpace(),
        _img(),
        _verticalSpace(),
        _verticalSpace(),
        _botoes1(context),
        _botoes2(context),
      ],
    ),
  );
}

_titulo() {
  return Text(
    "Questão 1",
    style: TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    ),
    textAlign: TextAlign.center,
  );
}

_texto() {
  return Align(
    alignment: Alignment
        .topCenter, // Align however you like (i.e .centerRight, centerLeft)
    child: Text(
      "Considerando essa árvore abaixo, se o próximo número a ser inserido fosse o número 60, onde ele iria parar?",
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

_img() {
  return Image.asset(
    "assets/images/questao1.png",
    width: 330,
    height: 200,
    fit: BoxFit.contain,
  );
}

_botoes1(context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
    RaisedButton(
        child: Text("Esquerda do 30"),
        onPressed: () => _onClickErrado(context)),
    RaisedButton(
        child: Text("Direita do 30"),
        onPressed: () => _onClickErrado(context)),
  ]);
}

_botoes2(context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        RaisedButton(
            child: Text("Esquerda do 70"),
            onPressed: () => _onClickCerto(context)),
        RaisedButton(
            child: Text("Direita do 70"),
            onPressed: () => _onClickErrado(context)),
      ]);
}

_onClickCerto(BuildContext context) {
  Fluttertoast.showToast(
      msg: "Great!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0
  );
//  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
//    //return numero_inserido3();
//  }));
}

_onClickErrado(BuildContext context) {
  Fluttertoast.showToast(
      msg: "Ops! Tente de novo!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

_verticalSpace() {
  return SizedBox(
    height: 18,
  );
}
