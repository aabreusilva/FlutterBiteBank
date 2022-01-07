import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    home: Scaffold(
      body: const FormularioTransferencia(),
      appBar: AppBar(
        title: const Text('Transferêcias',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() { },
        child: const Icon(Icons.add),
      ),
    ),
  ));

class FormularioTransferencia extends StatelessWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

//Apresentando as listas dentro de uma coluna.
class ListaTransferencias extends StatelessWidget {
  const ListaTransferencias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget> [
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(200.0, 2000)),
        ItemTransferencia(Transferencia(300.0, 3000)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

 final Transferencia _transferencia;

 // ignore: use_key_in_widget_constructors
 const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {

    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

//Classe criada para armazenar as variáveis valor(double) e numero da conta(INT).
class Transferencia {

  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}