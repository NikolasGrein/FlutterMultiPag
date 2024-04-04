import 'package:flutter/material.dart';
import 'package:somativa_flutter/imc.dart';
import 'package:somativa_flutter/produto.dart';

class principal extends StatelessWidget {
  const principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicação Principal'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('IMC'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const imc()),
            );
          },
        ),

      ),
    );
  }
}
