import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstPage() 
    );
  }
}

class FirstPage extends StatelessWidget {
  const  FirstPage ({super.key});


  @override 
    Widget build (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Pagina principal'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary
        ), 
        body: Center(
          child: ElevatedButton(
            child: const Text('Ir a la segunda pantalla'),   
            onPressed: () {
              //Funcion para ir a la segunda pagina
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
            },    
          )
        ),
      );
    }
}

class SecondPage extends StatelessWidget {
  const  SecondPage ({super.key});


  @override 
    Widget build (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Segunda principal'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary
        ), 
        body: Center(
          child: ElevatedButton(
            child: const Text('Regresar'),   
            onPressed: () {
              //Funcion para regresar
              Navigator.pop(context);
            },    
          )
        ),
      );
    }
}