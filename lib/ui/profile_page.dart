import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Replace with your dummy data
  final String _name = "John Doe";
  final String _email = "johndoe@example.com";

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/avatar.png'), // Replace with your asset path
            ),
            const SizedBox(height: 20.0),
            Text(
              _name,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(_email),
          ],
        ),
      ),
    );
  }
}
