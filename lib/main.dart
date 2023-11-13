import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manejo de Alertas y Mensajes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Mostrar AlertDialog
                _mostrarAlertDialog(context);
              },
              child: Text('Mostrar AlertDialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Mostrar Snackbar
                _mostrarSnackbar(context);
              },
              child: Text('Mostrar Snackbar'),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alerta'),
          content: Text('Este es un mensaje de alerta.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void _mostrarSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Esto es un Snackbar'),
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: () {
            // Puedes realizar acciones al presionar el botón en el Snackbar
          },
        ),
      ),
    );
  }
}
