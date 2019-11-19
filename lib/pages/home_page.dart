import 'package:aula01/pages/intro_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
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
        _img(),
        _verticalSpace(),
        _verticalSpace(),
        _preparedButton(context),
        _needsIntroButton(context),
      ],
    ),
  );
}

_titulo() {
  return Text(
    "Bem Vindo!",
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
      "Esse jogo iá te ensinar os conceitos básicos de árvores binárias, estão prontas, crianças!?",
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

_preparedButton(context) {
  return RaisedButton(
      child: Text("Estamos Capitão!"),
      onPressed: () => _onClickPrepared(context));
}

_needsIntroButton(context) {
  return RaisedButton(
      child: Text("Ainda não =("), onPressed: () => _onClickPrepared(context));
}

_onClickPrepared(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return intro_1();
  }));
}

_img() {
  return Image.asset(
    "assets/images/capitao.jpeg",
    width: 300,
    height: 200,
    fit: BoxFit.fill,
  );
}

// Pra espaços assim, usar sizedBox, porque da pra definir altura e largura de espaçamento.
_verticalSpace() {
  return SizedBox(
    height: 20,
    // width : 20
  );
}
