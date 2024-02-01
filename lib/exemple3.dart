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
        width: size.width,
        height: size.height,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.greenAccent, Colors.tealAccent, Colors.teal])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: size.width / 2,
                height: size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(AssetsRes.FLUTTER), fit: BoxFit.cover),
                ),
              ),
            ),
            Gap(10),
            Text(
              "Flutter Login",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 45,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Connect to your account",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            Gap(50),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: "Pseudo",
                  prefixIcon: CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.group_outlined,
                      color: Colors.tealAccent,
                      size: 40,
                    ),
                  ),
                  contentPadding: EdgeInsets.zero,
                  constraints: BoxConstraints(minHeight: 50),
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  enabled: true),
            ),
            Gap(10),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.tealAccent,
                    size: 40,
                  ),
                ),
                contentPadding: EdgeInsets.zero,
                constraints: BoxConstraints(minHeight: 50),
                hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                enabled: true,
              ),
            ),
            Gap(30),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(10)),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "CONNEXION",
                    style: GoogleFonts.poppins(
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
