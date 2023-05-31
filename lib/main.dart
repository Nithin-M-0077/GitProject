import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 1,
        centerTitle: true,
        title: Text('Counter'),
      ),
      body: ListView.builder(
        //itemCount:
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: ListTile(
                //title: Text(words[index]),
                ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Minus',
              child: Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Add',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
