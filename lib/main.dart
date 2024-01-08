import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Nothing clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        foregroundColor: Colors.blue[200],
        onPressed: () {
          setState(() {
            text = 'FAB clicked';
          });
        },
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: Text(
          'add',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$text'),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,
                  backgroundColor: Colors.purple,
                  elevation: 10),
              onPressed: () {
                setState(() {
                  text = 'Elavated button clicked';
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.save), SizedBox(width: 5), Text('Save')],
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                text = 'TextButton clicked';
              },
              child: Text('OK'),
            ),
            SizedBox(height: 20),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      text = 'TextButton in ButtonBar clicked';
                    });
                  },
                  child: Text('NO'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      text = 'ElevatedButten in buttonBar clicked';
                    });
                  },
                  child: Text('Yes'),
                ),
               
              ],
            ),
             MaterialButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.red,
                  width: 3
                ),
                borderRadius: BorderRadius.circular(20)),
              color: Colors.blue,
                    child: Text(
                      'Enter',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        text = 'Material button is clicked';
                      });
                    }),
          ],
        ),
      ),
    );
  }
}
