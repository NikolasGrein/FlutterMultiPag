import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Produto(),
    );
  }
}

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _HomePageState();
}

class _HomePageState extends State<Produto> {
  TextEditingController idController = new TextEditingController();
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  String _textoInfo = "Informe os dados do produto:";

  void _produto(){
    setState(() {
      String id = (idController.text);

      String nome = (nomeController.text);

      String descricao = (descricaoController.text);

      idController.text = "";
      nomeController.text = "";
      descricaoController.text = "";
      _textoInfo = "Cadastro realizado";

      if(id.isEmpty){
        _textoInfo = "Insira os dados corretamente.";
      }

      if(nome.isEmpty) {
        _textoInfo = "Insira os dados corretamente.";
      }

      if(descricao.isEmpty){
        _textoInfo = "Insira os dados corretamente.";
      }
    });
  }

  void _limpar_Tela(){
    idController.text = "";
    nomeController.text = "";
    descricaoController.text = "";
    _textoInfo = "Informe seus dados";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            const Icon(
              Icons.fastfood,
              size: 110.0,
              color: Colors.deepPurpleAccent,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "ID",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: idController,
            ),
            // butao
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Descrição",
                  labelStyle: TextStyle(color: Colors.black)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _produto,
                    child: const Text("Cadastrar")
                ),
              ),
            ),

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
