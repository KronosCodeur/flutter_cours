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
        child: ShowButton(),
      ),
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Bienvenue au cours de flutter",
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

class ShowIcon extends StatelessWidget {
  const ShowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.code_rounded,
      color: Colors.red,
      size: 150,
    );
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text("Click on meeeee !!!"),
    );
  }
}
