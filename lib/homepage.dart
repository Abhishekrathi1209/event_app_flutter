import 'package:flutter/material.dart';
import 'eventpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _eventlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Center(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemCount: _eventlist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  tileColor: Colors.white,
                  title: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      _eventlist[index],
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () async {
              String inputEvent = await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Eventpage()));
              setState(() {
                _eventlist.add(inputEvent);
              });
            },
            child: const Icon(Icons.add),
          );
        }));
  }
}
