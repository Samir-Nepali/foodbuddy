import 'package:flutter/material.dart';
import 'package:foodbuddy/user.dart';

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffcb01),
      appBar: AppBar(
        backgroundColor: Color(0xffffcb01),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => user()));
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/batman.png"),
                  ),
                ),
                SizedBox(width: 10),

                Text("Hello,Buddy",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 110),
                IconButton(
                  icon: Icon(Icons.notifications),
                  padding: EdgeInsets.all(18),
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: ("Search what you want... "),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 15),
                Text("Popular Items",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 180),
                Opacity(
                  opacity: 0.5,
                  child: Text("See More", style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
            Image.asset(
              "assets/images/food.png",
              width: 280,
              height: 200,
            ),
            Row(
              children: [
                SizedBox(width: 15),
                Text("Offers Today",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(width: 180),
                Opacity(
                  opacity: 0.5,
                  child: Text("See More", style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
            SizedBox(height: 15),
            Image.asset(
              "assets/images/food.png",
              height: 200,
              width: 280,
            ),
          ],
        ),
      ),
    );
  }
}
