import 'package:aula01/pages/the_game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class numero_inserido3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 203, 236, 241),
      appBar: AppBar(
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
        _verticalSpace(),
        _verticalSpace(),
        _preparedButton(context),
      ],
    ),
  );
}

_titulo() {
  return Text(
    "Terceiro Número Inserido",
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
      "Caso o número 15 for adicionado, ele é  maior que o 10, logo deve ir para a sua direita, e menor que o 20, logo,"
      "deve ir para a esquerda, da seguinte forma:",
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
    "assets/images/10-20-15.png",
    width: 200,
    height: 200,
  );
}

_preparedButton(context) {
  return RaisedButton(
      child: Text("Vamos Começar!"),
      onPressed: () => _onClickPrepared(context));
}

_onClickPrepared(BuildContext context) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
    return the_game();
  }));
}

_verticalSpace() {
  return SizedBox(
    height: 18,
  );
}
