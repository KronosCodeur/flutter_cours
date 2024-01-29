import 'package:flutter/material.dart';

class Exemple1 extends StatelessWidget {
  const Exemple1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Column(
          children: [
            ShowText(),
            ShowImage(),
          ],
        ),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Bienvenue au cours de flutter !!!",
      style: TextStyle(
          color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}

class ShowImage extends StatelessWidget {
  const ShowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logov2.png",
      width: 400,
      height: 400,
    );
  }
}

class ShowBottom extends StatelessWidget {
  const ShowBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
