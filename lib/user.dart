import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ph.dart';

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        backgroundColor: Color(0xffffcb01),
      ),
      body: SafeArea(
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/batman.png")),
                      color: Colors.white,
                      shape: BoxShape.circle)),
            ],
          ),
          SizedBox(height: 10),
          Text("User Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center),
          SizedBox(height: 30),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Iconify(Ph.user),
                  SizedBox(
                    width: 30,
                  ),
                  Text("Personal Info",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      )),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Iconify(Ic.outline_local_offer),
                  Text("Vouchers/Offers",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                      )),
                ],
              ),
              SizedBox(height: 20),
              Text("Addresses",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  )),
              SizedBox(height: 20),
              Text("Order History",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  )),
              SizedBox(height: 20),
              Text("Help Center",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  )),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text("Settings",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    )),
                SizedBox(height: 20),
                Text("Logout ",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
