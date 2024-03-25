import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor:  Colors.pink.shade200,
      title: Text('Doctor Profile',),centerTitle: true,),
      body: Column(children: [
        AppointtmentAcceptedViewCard(patientName:'Hassan AFTAB', startTime: '01:PM', endTime: '03:PM', patientID: '3', doctorID: '3', fees: '500')
      ],),);
  }
}
class AppointtmentAcceptedViewCard extends StatelessWidget {
  const AppointtmentAcceptedViewCard({
    required this.patientName,
    required this.startTime,
    required this.endTime,
  //  required this.date,
    required this.patientID,
    required this.doctorID,
    Key? key,
    required this.fees,
  }) : super(key: key);
  final String patientName;
  final String startTime;
  final String endTime;
 // final DateTime date;
  final String fees;
  final String patientID;
  final String doctorID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 250,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black, spreadRadius: 2),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "Name:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        patientName,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text("Start time:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(startTime),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text("End Time:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(endTime),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text("Date:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text('22/03/2024')
                   //     Text(date.toString().split(" ")[0]),
                      ],
                    )),
              ),
              SizedBox(
                height: (10),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text("Fees:"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(fees),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        // side: BorderSide(
                        //   width: getProportionateScreenWidth(1).0,
                        //   color: Colors.blueAccent,
                        // ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Booked',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade900,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Presiption',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        // side: BorderSide(
                        //   width: getProportionateScreenWidth(1).0,
                        //   color: Colors.blueAccent,
                        // ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Call',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}