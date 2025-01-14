import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(0, 0, 204, 255)),
        //seedColor: const Color.fromARGB(190, 144, 137, 140),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(title: 'Tijucas do Sul'),
    );
  }
}

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key, required this.title});

  final String title;

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.blue,
              child: const Text(
                  'Vamos conhecer um pouco mais sobre essa cidade maravilhosa:'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('É um município brasileiro do estado do Paraná.'),
                //Text('Segunda linha'),
                //  Text('Terceira linha'),
                // Text('Quarta linha'),
              ],
            ),
            Expanded(
              child: Container(
                  //alignment: Alignment.topLeft,
                  child: const Text(
                      'Sua população está estimada em 17.621 habitantes.')),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(185, 135, 221, 241),
                child: const Text(
                    ' TURISMO: A cidade é famosa pelos haras e pelas pousadas que atraem  turistas durante todo o ano. A menos de uma hora da capital Curitiba, é uma ótima opção para o turismo rural.'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 239, 230, 229),
                child: const Text(
                    ' Atualmente detém o título de Capital Paranaense da Agricultura Orgânica, devido ao número expressivo de produtores da modalidade, saindo na frente de diversas cidades no Brasil, no quesito sustentabilidade.'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                //color: const Color.fromARGB(255, 144, 135, 134),
                color: const Color.fromARGB(185, 135, 221, 241),
                child: const Text(
                    ' Tijucas do Sul teve sua origem nas décadas que sucederam ao descobrimento do Brasil. A região serviu como ponto de ligação direta entre Curitiba e São Francisco do Sul – com o chamado Caminho dos Ambrósios.'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 250, 248, 247),
                child: const Text(
                    ' Tijucas do Sul foi escolhida pelo artista plástico, Sergius Erdelyi, de origem austríaca, para ser o local de sua residência. Este, passou a morar no município em meados dos anos 1970, onde deixou um legado com mais de 4.000 obras catalogadas e registradas. '),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        //tooltip: 'Increment',
       // child: const Icon(Icons.add),
      ),
    );
  }
}
