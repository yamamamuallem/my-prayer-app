import 'package:flutter/material.dart';
import 'package:mygraduation/Screens/Prayer_Tracker_Screen.dart';
import 'package:mygraduation/Screens/monthly_plan_screen.dart';
import 'package:mygraduation/Screens/prayers_times.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
navigatorKey: GlobalKey<NavigatorState>(), // Navigation key for Flutter Navigation
onGenerateRoute: (RouteSettings settings) {
switch (settings.name) {
case '/prayerTracker':
return MaterialPageRoute(
builder: (context) => const PrayerTrackerPage(),
);
case '/monthlyPlan':
return MaterialPageRoute(
builder: (context) => const MonthlyPlanPage(),
);
case '/prayersTimes':
return MaterialPageRoute(
builder: (context) => const PrayersTimesPage(),
);
default:
return null;
}
      },
    );
  }
}
