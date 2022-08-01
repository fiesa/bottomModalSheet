import 'dart:html';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _onPressed(BuildContext ctx) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.orangeAccent.withOpacity(0.8),
        barrierColor: Colors.transparent,
        isScrollControlled: true,
        context: ctx,
        builder: (context) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      'asset/images/Layer_10.png',
                    ),
                  ),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('*****'),
                    Text(
                      'Duration Distance',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text('1.0'),
                        SizedBox(
                          width: 50,
                        ),
                        Text('0.0'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('min'),
                        SizedBox(
                          width: 50,
                        ),
                        Text('km')
                      ],
                    ),
                    SizedBox(height: 40),
                  ],
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Text(
                      '3.3\$',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Show Trip Progress',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
            mainAxisSize: MainAxisSize.min,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () => _onPressed(context),
          child: Text('Tap to open ModalBottomSheet'),
        ),
      ),
    );
  }
}
