import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
    titulo: 'Mi Primer APP Ejemplo',
  ));
}

class MyApp extends StatelessWidget {
  final String titulo;
  const MyApp({super.key, required this.titulo});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Contador',
        edad: 99,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  final int edad;

  const MyHomePage({super.key, required this.title, required this.edad});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Titulo ${widget.title} Edad: ${widget.edad}"),
        actions: const [Icon(Icons.close), Icon(Icons.person)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.countertops),
            const Text(
              'Contando...:',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('-')),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                ElevatedButton(
                    onPressed: () {
                      _incrementCounter();
                    },
                    child: Text('+')),
              ],
            ),
            ElevatedButton(onPressed: () {}, child: Text('Reset')),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.person_2_outlined),
                ),
                Icon(Icons.person_2_outlined),
                Icon(Icons.person_2_outlined)
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
