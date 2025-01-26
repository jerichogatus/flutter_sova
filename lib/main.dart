import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int yearsToLive = 0;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF10255c), 
        appBar: AppBar(
          title: Text('Valorant ID', style: TextStyle(fontFamily: 'Valorant Font')),
          centerTitle: true,
          backgroundColor: Color(0xFF38b3dd),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage('assets/sova.png'),
                ),
              ),
              SizedBox(height: 10),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'AGENT:',
                    style: TextStyle(fontSize: 16, color: Colors.white, 
                    fontFamily: 'Valorant Font'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'SOVA',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF38b3dd),
                      fontFamily: 'Valorant Font',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              
              Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      Icon(Icons.voice_chat_sharp, color: Colors.white, size: 25),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Wherever they run, I will find them.',
                          style: TextStyle(color: Colors.white, fontFamily: 'Valorant Font'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
              SizedBox(height: 16),
              
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF263ca1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      'Do you like this agent?',
                      style: TextStyle(fontSize: 15, color: Colors.white, 
                      fontFamily: 'Valorant Font'),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '$yearsToLive',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Valorant Font',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              yearsToLive += 1;
            });
          },
          backgroundColor: Color(0xFF263ca1),
          child: Icon(Icons.thumb_up_sharp, color: Colors.white),
        ),
      ),
    );
  }
}
