import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Spotify_login extends StatelessWidget {
  const Spotify_login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 450,
            color: Colors.grey,
            child: Image.asset(
              'Assets/img/spotify.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            children: [
              Container(
                height: 250,
              ),
              SizedBox(
                height: 550,
                width: 450,
                // color: Colors.black,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage('Assets/img/s_logo.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Millions of songs.",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      "Free on Spotify",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 35),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Text(
                        "Sign up free",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color(0xff121212),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Colors.white60,
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff121212),
                              radius: 25,
                              child: SizedBox(
                                height: 25,
                                width: 25,
                                child: Image.asset(
                                  'Assets/img/Phone.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Continue with phone number',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color(0xff121212),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Colors.white60,
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff121212),
                              radius: 25,
                              child: SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset(
                                    'Assets/img/Google.png',
                                    fit: BoxFit.contain,
                                  )),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Continue with Google',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                            color: const Color(0xff121212),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: Colors.white60,
                                width: 1,
                                style: BorderStyle.solid)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              backgroundColor: const Color(0xff121212),
                              radius: 25,
                              child: SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset(
                                    'Assets/img/Facebook.png',
                                    fit: BoxFit.contain,
                                  )),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Continue with Facebook',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Log in",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
