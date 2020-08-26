import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle styletext = new TextStyle(fontSize: 30);
  int clicks = 0;
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Titulo'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text(
              'Número de clicks:',
              style: styletext,
            ),
            Text('$clicks', style: styletext)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            this.clicks++;
          },
          autofocus: true,
          child: Icon(Icons.add),
          tooltip: 'Agregar'),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
