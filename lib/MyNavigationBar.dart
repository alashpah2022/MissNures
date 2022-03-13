import 'package:flutter/material.dart';
import 'package:untitled/Measurements/measurements.dart';
import 'package:untitled/prescriptionScreen/prescriptionPage.dart';

import 'Nav_drawer/Nav_drawer.dart';
import 'Patient_profile/patient_profile.dart';

class MyNavigationBar extends StatefulWidget {
  // MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    DialogExample(),
    patientDiagnosis(),
    Measurements()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('MISS NURSE'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('asset/medicine.png'),
            label: 'Prescription',
            backgroundColor: Color.fromRGBO(21, 74, 132, 1),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/profile.png'),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(21, 74, 132, 1),
          ),
          new BottomNavigationBarItem(
            icon: Image.asset('asset/medicalhistory.png'),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(21, 74, 132, 1),
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        iconSize: 20,
        onTap: _onItemTapped,
        elevation: 2,
      ),
    );
  }
}
