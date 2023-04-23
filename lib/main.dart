import 'package:flutter/material.dart';
import 'package:sliver_app_bar/sliver_grid.dart';

void main() {
  // Aula sobre SliverAppBar
  // runApp(const MyApp());

  // Aula sobre SliverList
  // runApp(const AppBarApp());

  // Aula sobre GridList
  runApp(const AppBarSliverGrid());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SliverAppBar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter SliverAppBar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue.shade300,
            // title: Text('Title 1'),
            // leading: Icon(Icons.menu),
            expandedHeight: 200,
            // Fixa a barra menor na parte superior
            pinned: true,
            // Retorna a barra já quando inicia o scroll para cima
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Flutter SliverAppBar Title'),
              background: ColoredBox(
                color: Colors.blue.shade600,
                child: const FlutterLogo(),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
              FlutterLogo(
                size: 200,
              ),
            ],
          )),
        ],
      ),
    );
  }
}
