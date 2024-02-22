import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntaSelecionada = 0;

  void responder() {
    // perguntaSelecionada++;
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Theme(
            // Defina o tema aqui
            data: ThemeData(
              // Define as cores do tema
              useMaterial3: true,
              primaryColor: Colors.blue,
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF000000),
              ),
              appBarTheme: AppBarTheme(
                backgroundColor:
                    Colors.blue, // Define o fundo da barra de título como azul
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                // Centraliza o título da AppBar
                centerTitle: true,
                title: Text('Perguntas'),
                // Define o estilo do texto do título da AppBar
                titleTextStyle: TextStyle(
                  color: Colors
                      .white, // Define a cor do texto do título como branco
                  fontSize: 20, // Define o tamanho da fonte como 15
                ),
              ),
              body: Column(
                children: <Widget>[
                  Text(perguntas[0]),
                  ElevatedButton(
                    onPressed: responder,
                    child: Text('Resposta 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Responsta 2');
                    },
                    child: Text('Resposta 2'),
                  ),
                  ElevatedButton(
                    onPressed: () => print('Resposta 3'),
                    child: Text('Resposta 3'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
