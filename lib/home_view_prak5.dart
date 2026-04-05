import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewPage(username: '', nim: '',),
    );
  }
}

class HomeViewPage extends StatelessWidget {

  final String username;
  final String nim;

  const HomeViewPage({super.key, required this.username, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Home Page',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.5),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    style: ButtonStyle(),
                    onPressed: () {
                      
                    },
                    child: Text('Submit Data'),
                  ),
                ),
                const SizedBox(height: 16.0),
                Column(
                  children: [
                    Text(username),
                    Text(nim)
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}