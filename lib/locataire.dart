import 'package:flutter/material.dart';
import 'package:projet/locataire.dart';
import 'package:projet/creation.dart';

void main() => runApp(locataire());

class locataire extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('interface user'),
            backgroundColor: Colors.deepPurple[300],
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  ListView(
                    children: [
                      ListTile(
                        leading:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        title: Text('new locataire'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit)),
                        title: Text('editer'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.delete)),
                        title: Text('supprimer locataire'),
                      ),
                      ListTile(
                        leading:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                        title: Text('new appartement'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.edit)),
                        title: Text('edit appartement'),
                      ),
                      ListTile(
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.delete)),
                        title: Text('supprimer l appartement'),
                      ),
                    ],
                  );
                },
                icon: Icon(Icons.menu)),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.search),
              ),
              Icon(Icons.person),
            ],
          ),
          body: const Center(
            child: Text('hello!vous pouvez faire des actions ici.'),
          ),
        ));
  }
}

class tender extends StatefulWidget {
  @override
  _tenderState createState() => _tenderState();
}

class _tenderState extends State<tender> {
  final items = ['item 1', 'item 2', 'item 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("interface user"),
        backgroundColor: Colors.purple,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => creation()));
                },
                child: Text(
                  'new locataire',
                  style: TextStyle(color: Colors.green),
                )),
          ]),
    );
  }
}
