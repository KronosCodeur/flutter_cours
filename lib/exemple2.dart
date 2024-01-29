import 'package:flutter/material.dart';

class Exemple2 extends StatelessWidget {
  const Exemple2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShowBanner(),
            ShowTitleOne(),
            ShowTitleTwo(),
            ShowImageAndText(),
            ShowText(),
            ShowIconsAndLabels(),
            ShowTwoImages(),
            ShowForm(),
            ShowButton(),
          ],
        ),
      ),
    );
  }
}

class ShowBanner extends StatelessWidget {
  const ShowBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/trip.jpg",
    );
  }
}

class ShowTitleOne extends StatelessWidget {
  const ShowTitleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Bienvenue au cours de flutter",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}

class ShowTitleTwo extends StatelessWidget {
  const ShowTitleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Seance #1",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
    );
  }
}

class ShowImageAndText extends StatelessWidget {
  const ShowImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/logov2.png",
          width: 100,
          height: 100,
        ),
        const Column(
          children: [
            Text(
              "Chargeurrr petit bouuuut!",
              style: TextStyle(fontSize: 17),
              softWrap: true,
            ),
            Text(
              "je cherche chargeurrrr petit bouuut",
              style: TextStyle(fontSize: 17),
              softWrap: true,
            ),
          ],
        )
      ],
    );
  }
}

class ShowText extends StatelessWidget {
  const ShowText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Chargeurrr petit bouuuut!",
          style: TextStyle(fontSize: 17),
          softWrap: true,
        ),
        Text(
          "je cherche chargeurrrr petit bouuut",
          style: TextStyle(fontSize: 17),
          softWrap: true,
        ),
      ],
    );
  }
}

class ShowIconsAndLabels extends StatelessWidget {
  const ShowIconsAndLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_hospital_rounded,
              color: Colors.red,
            ),
            Text(
              "Hospital",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.airplanemode_active_rounded,
              color: Colors.blue,
            ),
            Text(
              "Airport",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.group_rounded, color: Colors.brown),
            Text(
              "School",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}

class ShowTwoImages extends StatelessWidget {
  const ShowTwoImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          "assets/images/logov2.png",
          width: 150,
          height: 150,
        ),
        Image.asset(
          "assets/images/logov2.png",
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}

class ShowButton extends StatelessWidget {
  const ShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue)),
      child: const Text(
        "voir plus",
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ShowForm extends StatelessWidget {
  const ShowForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  "email:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("email")),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Expanded(
                flex: 3,
                child: Text(
                  "message:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 8,
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("email")),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            child: const Text(
              "Contacter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
