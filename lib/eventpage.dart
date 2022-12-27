import 'package:flutter/material.dart';

class Eventpage extends StatefulWidget {
  const Eventpage({super.key});

  @override
  State<Eventpage> createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {
  final eventname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('New Event'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                controller: eventname,
                decoration: InputDecoration(
                  hintText: "Event",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2)),
                  prefixIcon: const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                ),
                minLines: 1,
                maxLines: 8,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                width: 400,
                height: 50,
                child: Builder(builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      backgroundColor: Colors.grey,
                    ),
                    onPressed: () {
                      String eventnameAdd = eventname.text;

                      Navigator.of(context).pop(eventnameAdd);
                    },
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
