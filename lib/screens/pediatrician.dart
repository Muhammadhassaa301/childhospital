import 'package:flutter/material.dart';

class PediatricianScreen extends StatefulWidget {
  const PediatricianScreen({super.key});

  @override
  State<PediatricianScreen> createState() => _PediatricianScreenState();
}

class _PediatricianScreenState extends State<PediatricianScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
        backgroundColor: Colors.pink.shade200,
        title: const Text(
          'Pediatrician Panel',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
                image: AssetImage("assets/calendars.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const doctor_homeCard(
                    text: 'Appointment',
                    //     image: "assets/calendars.png",
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {},
                  child: doctor_homeCard(
                    text: 'Schedule',
                    //     image: "assets/calendars.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                doctor_homeCard(
                  text: 'Nutrition',
                  //  image: "assets/calendars.png",
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: doctor_homeCard(
                    text: 'Firstaid',
                    //     image: "assets/calendars.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                doctor_homeCard(
                  text: 'Feedback',
                  //   image: "assets/calendars.png",
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: doctor_homeCard(
                    text: 'Patient History',
                    //      image: "assets/calendars.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}

class doctor_homeCard extends StatelessWidget {
  const doctor_homeCard({
//required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  // final image;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.pink.shade200,
          boxShadow: [
            //   BoxShadow(color: Colors.black, spreadRadius: 2),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ////    Image.asset(
              //        image,
              //      scale: 4,
              //   ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
