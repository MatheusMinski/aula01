import 'package:aula01/pages/numero_inserido1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class intro_2 extends StatelessWidget {
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
      _verticalSpace(),
      _verticalSpace(),
      _texto(),
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
      "Como funcionam?",
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
        "Primeiramente adicionamos um valor, que será considerado o nó raiz, e a partir dele temos umas referência"
            " para os próximos valores",
        style: TextStyle(
          fontSize: 30,
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

_preparedButton(context){
  return RaisedButton(
    child: Text("Próximo!"),
    onPressed: () => _OnClickPrepared(context)
  );
}

_OnClickPrepared(BuildContext context){
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
    return numero_inserido1();
  }));
}

_verticalSpace(){
  return Text(
    " "
  );
}
