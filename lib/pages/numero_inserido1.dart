import 'package:aula01/pages/numero_inserido2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class numero_inserido1 extends StatelessWidget {
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
      _img(),
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
        "Nesse caso o nosso primeiro número adicionado foi o 10, para os próximos números que forem adicionados, precisamos verificar se "
            "ele é maior ou menor que o nó raiz",
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
  return Image.asset("assets/images/10.png",
    width: 200,
    height: 200,
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
    return numero_inserido2();
  }));
}
_verticalSpace(){
  return Text(
    " "
  );
}
