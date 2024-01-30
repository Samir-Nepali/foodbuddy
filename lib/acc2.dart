import 'package:flutter/material.dart';
import 'package:foodbuddy/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class account2 extends StatelessWidget {
  const account2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffcb01),
        appBar: AppBar(
          backgroundColor: Color(0xffffcb01),
        ),
        body: ListView(
          children: [
            Row(children: [
              SizedBox(height: 100),
              Padding(padding: EdgeInsets.all(15)),
              Text("Enter the verification code",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ]),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 350,
                height: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text("Enter the 6-digit code we have sent to:",
                        style: GoogleFonts.montserrat(fontSize: 16),
                        textAlign: TextAlign.center),
                    Text("abc@gmail.com",
                        style: GoogleFonts.montserrat(fontSize: 16),
                        textAlign: TextAlign.center),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Resend Code",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    Pinput(
                      onCompleted: (pin) => print(pin),
                      length: 6,
                      defaultPinTheme: PinTheme(
                        width: 40,
                        height: 56,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => homepage(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 45),
                          primary: Color.fromARGB(255, 232, 149, 149),
                          onPrimary: Colors.white,
                        ),
                        child: Text("Confirm")),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
