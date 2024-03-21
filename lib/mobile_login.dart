import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF355B3E),
        title: SizedBox(
          width: 230,
          child: Image.asset(
            'Assets/img/mob_logo.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220,
              width: 415,
              color: const Color(0xFFF5DBC4),
              child: SizedBox(
                height: 200,
                width: 415,
                child: Image.asset("Assets/img/logo.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: height/80,),
                  Text(
                    'Artificial Intelligence giving you travel recommendations',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF355B3E),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome Back, Please login to your account',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF57745E),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "  Email",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFB8D5BF), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFB8D5BF), width: 2),
                      ),
                    ),
                    cursorColor: Color(0xFFB8D5BF),
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "  Password",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFB8D5BF), width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFB8D5BF), width: 2),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (pass) {
                              pass = false;
                            } else {
                              pass = true;
                            }
                          });
                        },
                        icon: (pass)
                            ? const Icon(
                          CupertinoIcons.eye_fill,
                          color: Color(0xFFB8D5BF),
                        )
                            : const Icon(
                          CupertinoIcons.eye_slash_fill,
                          color: Color(0xFFB8D5BF),
                        ),
                      ),
                    ),
                    cursorColor: const Color(0xFFB8D5BF),
                    obscureText: pass,
                    obscuringCharacter: "*",
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: check,
                            onChanged: (value) {
                              setState(() {
                                if (check == false) {
                                  check = true;
                                } else {
                                  check = false;
                                }
                              });
                            },
                            activeColor: Colors.green,
                            
                          ),
                          const Text(
                            'Remember me',
                            style: TextStyle(
                              color: Color(0xFF355B3E),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 0.06,
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Forgot password?',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.inter(
                          color: const Color(0xFF355B3E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                          height: 0.06,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height / 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 48,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF029664),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Login',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 48,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFF029664)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF029664),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0.06,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 372,
                    height: 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Or, login with',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF58745E),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Facebook',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF355B3E),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Linked In',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF355B3E),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Google',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF355B3E),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
bool check = false;
bool pass = true;