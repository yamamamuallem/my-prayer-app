//third buttons page called "Prayers Times" its just show  a
// schedule of the prayers times, including altahajjud (optional)




import 'package:flutter/material.dart';
import 'package:hijri_converter/hijri_converter.dart';

class PrayersTimes {
  final String name;
  final String time;

  PrayersTimes(this.name, this.time);
}

class PrayersTimesPage extends StatefulWidget {
  const PrayersTimesPage({super.key});

  @override
  State<PrayersTimesPage> createState() => _PrayersTimesPageState();
}

class _PrayersTimesPageState extends State<PrayersTimesPage> {
  // Prayer times data (replace with actual calculation logic)
  final List<PrayersTimes> _prayerTimes = [
    PrayersTimes('Fajr', '05:00 AM'),
    PrayersTimes('Dhuhr', '12:30 PM'),
    PrayersTimes('Asr', '03:00 PM'),
    PrayersTimes('Maghrib', '06:00 PM'),
    PrayersTimes('Isha', '08:30 PM'),
    PrayersTimes('Tahajjud', '03:00 AM'), // Optional
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prayers Times'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (var prayerTime in _prayerTimes)
              ListTile(
                title: Text(prayerTime.name),
                trailing: Text(prayerTime.time),
              ),
          ],
        ),
      ),
    );
  }
}