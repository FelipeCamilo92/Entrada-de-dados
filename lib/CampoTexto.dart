import 'package:flutter/material.dart'; //importação da biblioteca flutter

class CampoTexto extends StatefulWidget { //criação da classe CampoTexto

  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
                border: OutlineInputBorder(),
              ),
              maxLength: 5,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              onSubmitted: (String texto) {
                print("valor digitado: " + texto);
              },
              controller: _controller,
              obscureText: true,
            ),
          ),
          ElevatedButton(
            child: Text("Salvar",
                style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                textAlign: TextAlign.center,
            ),
            onPressed: () {
              print("valor digitado: " + _controller.text);
            },
          ),
        ]
      ),
    );
  }
}
