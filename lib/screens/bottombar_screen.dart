// ignore: unused_import

import 'package:childapp/controllers/bottom_bar.dart';
import 'package:childapp/screens/appointment.dart';
import 'package:childapp/screens/pediatrician.dart';
import 'package:childapp/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class DoctorDashboard extends StatelessWidget {
  DoctorDashboard({Key? key}) : super(key: key);

  BottomNavBarController barController = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    // return GetBuilder<BottomNavBarController>(
    //     // init: BottomNavBarController(),
    //     builder: (barController) {


    return Obx(
      () => Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: IndexedStack(
            index: barController.selectedIndex.value,
            children: [
             PediatricianScreen(),
             AppointmentScreen(),
              PediatricianScreen(),
             ProfileScreen()
              // DoctorScheduleHistory(),
              // AppointmentScreen(),
              // DoctorProfile()

              // PatientReportSearchView(),
              // const AppointmentScreen(),
              //  const profilePt(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red.shade900,
          currentIndex: barController.selectedIndex.value,
          onTap: barController.changeTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'Assets/home.png',
                scale: 4,
                color: Colors.black,
              ),
              activeIcon: Image.asset(
                'Assets/home3.png',
                scale: 4,
                // color: kRedLogin,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'Assets/report.png',
                scale: 4,
                color: Colors.black,
              ),
              label: " Sehedule",
              //   backgroundColor: Colors.red,
              activeIcon: Image.asset(
                'Assets/report3.png',
                scale: 4,
                //  color: kRedLogin,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'Assets/appointment.png',
                scale: 4,
                color: Colors.black,
              ),
              label: "Appointments",
              activeIcon: Image.asset(
                'Assets/appointment3.png',
                scale: 4,
                // color: kRedLogin,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'Assets/profile2.png',
                scale: 4,
                color: Colors.black,
              ),
              label: "Profile",
              activeIcon: Image.asset(
                'Assets/profile3.png',
                scale: 4,
                //  color: kRedLogin,
              ),
            ),
          ],
        ),
      ),
      // },
    );
  }
}