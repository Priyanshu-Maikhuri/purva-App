import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:purva/password-manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 246, 57, 57)),
        canvasColor: const Color.fromARGB(255, 248, 248, 248),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final phNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.orange[900]!,
          Colors.orange[800]!,
          Colors.orange[400]!
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: GoogleFonts.ptSerif(
                            fontSize: 30, fontWeight: FontWeight.w500)
                        .copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Welcome Back",
                      style: GoogleFonts.ptSerif(fontSize: 18).copyWith(
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(225, 95, 27, 0.3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200]!))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Enter Phone Number',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 7,
                                        ),
                                        CountryFlag.fromLanguageCode(
                                          'hi',
                                          height: 30,
                                          width: 33,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Text(
                                          '+91',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(width: 5),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: TextField(
                                              controller: phNo,
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 10,
                                              decoration: const InputDecoration(
                                                  hintText: "\tPhone Number",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey),
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                        ),
                                        // Expanded(
                                        //   child: TextField(
                                        //     controller: phNo,
                                        //     keyboardType: TextInputType.number,
                                        //     maxLength: 10,
                                        //     decoration: const InputDecoration(
                                        //         hintText: "\tPhone Number",
                                        //         hintStyle: TextStyle(
                                        //             color: Colors.grey),
                                        //         border: InputBorder.none),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   padding: const EdgeInsets.all(10),
                              //   decoration: BoxDecoration(
                              //       border: Border(
                              //           bottom: BorderSide(
                              //               color: Colors.grey[200]!))),
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //         hintText: "Password",
                              //         hintStyle: TextStyle(color: Colors.grey),
                              //         border: InputBorder.none),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 63,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (phNo.text.length == 10) {
                              showModalBottomSheet(
                                // backgroundColor: Colors.yellow,
                                context: context,
                                builder: (_) => const PasswordManager(),
                              );
                            }
                          },
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 246, 57, 57)),
                            child: const Center(
                              child: Text(
                                "Proceed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
