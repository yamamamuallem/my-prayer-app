
//what to do:
// developing a home screen to my app, packground on lightblue and it have 3 rectangular buttons
// at the middle first button name "Prayer Tracker"
// and second "Monthly Report" and third "Prayer Times" The buttons colors are White.






import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:mygraduation/Screens/Prayer_Tracker_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
Widget build(BuildContext context) {

  return Scaffold( appBar: AppBar(
        title: const Text(
          'Blessed Steps',
          style: TextStyle(
            fontSize: 30.0, // Adjust title font size
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, 
      ),
    backgroundColor: Colors.lightBlueAccent, // Light blue background
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the column
        children: [
          // First button - Prayer Tracker
          ElevatedButton(
  onPressed: () {
    // Navigate to PrayerTrackerPage using flutter_navigation
     Navigator.pushNamed(context, '/prayerTracker');
  },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(300, 100), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Rounded corners
              ),
            ),
            child: const Text('Prayer Tracker'),
          ),
          const SizedBox(height: 40), // Add spacing between buttons
          // Second button - Monthly Report
          ElevatedButton(
            onPressed: () {
               Navigator.pushNamed(context, '/monthlyPlan');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: const Size(300, 100), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Monthly Report'),
          ),
          const SizedBox(height: 40), // Add spacing between buttons
          // Third button - Prayer Times
          ElevatedButton(
            onPressed: () {
               Navigator.pushNamed(context, '/prayersTimes');

            },
            style:
             ElevatedButton.styleFrom(
          
              backgroundColor: Colors.white,
              minimumSize: const Size(300, 100), 
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Prayers Times'),
          ),
        ],
      ),
    ),
  );
}
}