
//I want the user when click the button "Prayer Tracker" the app will 
//take him to another page, this page allow the user to open the map
// and check-in his location and select the prayer name and time
// (make a suggestion for the all 5 prayers) and save this data





import 'package:flutter/material.dart';
import 'package:prayer_tracker_screen.dart';
class PrayerTrackerPage extends StatelessWidget {
   const PrayerTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('/prayerTracker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Map widget (implementation based on chosen library)
            // ...

            const Text('Select Prayer:'),
            DropdownButton<String>(
              // Prayer name options
            items: const [
    DropdownMenuItem(
      value: 'Fajr',
      child: Text('Fajr'),
    ),
    DropdownMenuItem(
      value: 'Dhuhr',
      child: Text('Dhuhr'),
    ),
    DropdownMenuItem(
      value: 'Asr',
      child: Text('Asr'),
    ),
    DropdownMenuItem(
      value: 'Maghrib',
      child: Text('Maghrib'),
    ),
    DropdownMenuItem(
      value: 'Isha',
      child: Text('Isha'),
    ),
  ],
              onChanged: (value) {
                // Handle prayer selection change
              },
            ),

            // Date and Time Picker widget (implementation based on chosen library)
            // ...

            ElevatedButton(
              onPressed: () {
                // Save prayer tracking data (location, prayer name, time)
                // Use state management or local storage
                // ignore: avoid_print
                print('Prayer tracking data saved!');
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
