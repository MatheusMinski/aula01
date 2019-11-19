import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class numero_inserido3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  return Column(
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
  );
}

_titulo() {
  return Text(
      "Primeiro Numero Inserido",
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.green,
      ),
      textAlign: TextAlign.center,
    );


}

_texto(){
    return Align(
      alignment: Alignment.topCenter, // Align however you like (i.e .centerRight, centerLeft)
      child: Text(
        "Caso o número 15 for adicionado, ele é  maior que o 10, logo deve ir para a sua direita, e menor que o 20, logo,"
            "deve ir para a esquerda, da seguinte forma:",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.green,
        ),
        textAlign: TextAlign.center,
      ),
    );
}

_img(){
  return Image.asset("assets/images/10-20-15.png",
    width: 200,
    height: 200,
  );
}

_preparedButton(context){
  return RaisedButton(
      child: Text("Vamos Começar!"),
      onPressed: () => _OnClickPrepared(context)
  );
}

_OnClickPrepared(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    //return numero_inserido3();
  }));
}
_verticalSpace(){
  return Text(
    " "
  );
}
