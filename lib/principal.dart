import 'package:flutter/material.dart'; // Importa o pacote flutter/material.dart para utilizar widgets do Material Design
import 'package:somativa_flutter/cadastro.dart';
import 'package:somativa_flutter/imc.dart';
import 'package:somativa_flutter/produto.dart';
import 'package:somativa_flutter/contador.dart';

class Home extends StatefulWidget { // Define a classe Home que é um StatefulWidget
  const Home({super.key}); // Construtor da classe Home

  @override
  State<Home> createState() => _HomePageState(); // Cria e retorna uma instância da classe de estado _HomePageState
}

class _HomePageState extends State<Home> { // Define a classe de estado _HomePageState
  @override
  Widget build(BuildContext context) { // Método build que retorna a interface de usuário da tela
    return Scaffold( // Retorna um Scaffold, um layout de tela básico
      appBar: AppBar( // Define a barra superior da tela
        title: Text("MENU"), // Título da barra
        centerTitle: true, // Centraliza o título na barra
        backgroundColor: Colors.deepOrangeAccent, // Cor de fundo da barra
      ),

      body: SingleChildScrollView( // Corpo da tela com rolagem
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Define o preenchimento do corpo
        child: Column( // Organiza os elementos em uma coluna vertical
          crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os elementos na largura da tela
          children: <Widget>[ // Lista de widgets que compõem o corpo da tela
            const Icon( // Ícone exibido na tela
              Icons.add_business_sharp, // Ícone de negócios
              size: 120.0, // Tamanho do ícone
              color: Colors.deepOrangeAccent, // Cor do ícone
            ),
            Text( // Texto exibido na tela
              "Aplicação Principal", // Conteúdo do texto
              textAlign: TextAlign.center, // Alinhamento do texto
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto
            ),
            Column( // Coluna de widgets para os botões
              crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os botões na largura da tela
              children: <Widget>[ // Lista de widgets que compõem os botões
                ElevatedButton( // Botão elevado
                  child: const Text("IMC"), // Texto do botão
                  onPressed: () { // Função executada quando o botão é pressionado
                    Navigator.push( // Navega para outra tela
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Imc(), // Navega para a tela de cálculo de IMC
                      ),
                    );
                  },
                ),
                // Outros botões seguem a mesma estrutura do botão "IMC", apenas com diferentes textos e destinos de navegação
                ElevatedButton(
                  child: const Text("Contador"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Contador(title: '',),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Cadastro Usuario"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroUser(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Cadastro de produtos"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Produto(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
