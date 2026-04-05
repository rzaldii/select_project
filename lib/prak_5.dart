import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/home_view_prak5.dart';
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
      home: Prak5Page(),
    );
  }
}

class Prak5Page extends StatelessWidget {
  const Prak5Page({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController nimController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Halaman Login',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.5),
              ),
              TextField(
                controller: usernameController, // <-- tambahkan ini
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  label: Text('Username'),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: nimController, // <-- tambahkan ini
                decoration: InputDecoration(
                  icon: Icon(Icons.perm_identity),
                  label: Text('NIM'),
                ),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: ButtonStyle(),
                  onPressed: () {
                    String username = usernameController.text;
                    String nim = nimController.text;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomeViewPage(username: username, nim: nim),
                      ),
                    );
                  },
                  child: Text('Submit Data'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
