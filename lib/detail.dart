import 'package:flutter/material.dart';

class DetailChat extends StatelessWidget {
  final String nama;

  const DetailChat({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text(
          "Chat dengan $nama",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
