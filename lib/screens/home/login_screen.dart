import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants.dart';
import 'package:flutter_ecommerce/screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding / 2),
          decoration: const BoxDecoration(
            color: kSecondaryColor,
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "Log in to discover",
                          style: GoogleFonts.poppins(
                            fontSize: 30.0,
                            color: kTextColor,
                          )
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.transparent,
                            width: 100,
                          )
                        ),
                      ],
                    ),
                    const SizedBox(height: kDefaultPadding),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter your username or email',
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: kTextLightColor,
                        )
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your username';
                        }
                        else {
                          username = value;
                        }
                      },
                    ),
                    const SizedBox(height: kDefaultPadding / 2),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Enter password',
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: kTextLightColor,
                        )
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: kDefaultPadding * 2),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(username: username)));
                            }
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(kCallToActionColor)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(kDefaultPadding / 4),
                            child: Text(
                              "Log in",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              )
                            ),
                          )
                        ),
                        const SizedBox(width: kDefaultPadding / 2),
                        ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(kDefaultPadding / 4),
                            child: Text(
                              "Sign up",
                              style: GoogleFonts.poppins(
                                color: kTextColor,
                              )
                            ),
                          )
                        ),
                      ],
                    )
                  ]
                ),
              )
            )
          )
        )
      ),
    );
  }
}