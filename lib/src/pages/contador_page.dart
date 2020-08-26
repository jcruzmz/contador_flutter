import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _styletext = new TextStyle(fontSize: 30);
  int _clicks = 0;
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(title: Text('Titulo'), centerTitle: true),
        body: Center(
          child: Column(
            children: [
              Text('Número de clicks:', style: this._styletext),
              Text('$_clicks', style: this._styletext)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
            onPressed: _restart, autofocus: true, child: Icon(Icons.replay)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: _substract, child: Icon(Icons.minimize)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add))
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _add() {
    setState(() => _clicks++);
  }

  void _substract() {
    setState(() => _clicks--);
  }

  void _restart() {
    setState(() => _clicks = 0);
  }
}
