import 'package:composant/res/assets_res.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Exemple3 extends StatefulWidget {
  const Exemple3({super.key});

  @override
  State<Exemple3> createState() => _Exemple3State();
}

class _Exemple3State extends State<Exemple3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AssetsRes.TRIP,
                ),
                fit: BoxFit.cover,
                opacity: 0.4),
            color: Colors.black),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width / 2,
                height: size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.tealAccent.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Image.asset(AssetsRes.FLUTTER),
              ),
              const Gap(10),
              Text(
                "Flutter Login",
                style: GoogleFonts.poppins(
                    color: Colors.tealAccent,
                    fontSize: 45,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Connect to your account",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const Gap(50),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.group_outlined,
                      color: Colors.tealAccent,
                      size: 30,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minHeight: 50),
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.tealAccent),
                  ),
                  enabled: true,
                ),
              ),
              const Gap(10),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.tealAccent,
                      size: 30,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minHeight: 50),
                  hintStyle: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.tealAccent),
                  ),
                ),
              ),
              const Gap(30),
              ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(10)),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "Connexion",
                    style: GoogleFonts.poppins(
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
