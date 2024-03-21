import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebSiteLogin extends StatefulWidget {
  const WebSiteLogin({super.key});

  @override
  State<WebSiteLogin> createState() => _WebSiteLoginState();
}

class _WebSiteLoginState extends State<WebSiteLogin> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: height / 2,
                width: width,
                color: const Color(0xff2f5538),
              ),
              Container(
                height: height / 2,
                width: width,
                color: const Color(0xfffffdbc),
              ),
            ],
          ),
          Center(
            child: Container(
              height: height / 1.3,
              width: width / 1.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF213A27),
                      blurRadius: 80,
                      offset: Offset(0, 72),
                      spreadRadius: -48,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height,
                    width: width / 3.931,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset('Assets/img/name.png'),
                          ),
                          SizedBox(
                            height: height / 25,
                          ),
                          Text(
                            'Artificial Intelligence giving you travel recommendations',
                            style: GoogleFonts.inter(
                              color: const Color(0xFF355B3E),
                              fontSize: 17,
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
                                fontSize: 12,
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
                            height: height / 15,
                          ),
                          SizedBox(
                            width: 372,
                            height: 16,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Or, login with',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF58745E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(width: 24),
                                Text(
                                  'Facebook',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF355B3E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 24),
                                Text(
                                  'Linked In',
                                  style: GoogleFonts.inter(
                                    color: const Color(0xFF355B3E),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 24),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: height / 1.3,
                    width: height / 1.3,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5DBC4),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Image.asset('Assets/img/logo.png'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

bool check = false;
bool pass = true;
