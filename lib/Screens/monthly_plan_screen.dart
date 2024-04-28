//the next buttons page, its called @Monthly Plan@ 
//which used the data saved from users check-in and
// make a list of his attending, if he is "attend" its displaying on green color, if not its on red color



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Class for storing attendance data
class AttendanceData {
  final DateTime date;
  final String status; // "attend" or "absent"

  AttendanceData(this.date, this.status);
}

class AttendanceProvider extends ChangeNotifier {
  final List<AttendanceData> _attendanceData = [];

  

  List<AttendanceData> get attendanceData => _attendanceData;

  void updateAttendance(AttendanceData data) {
    _attendanceData.add(data);
    notifyListeners();
  }
}

class MonthlyPlanPage extends StatelessWidget {
  const MonthlyPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final attendanceProvider = Provider.of<AttendanceProvider>(context);

   
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Plan'),
      ),
      body: ListView.builder(
        itemCount: attendanceProvider.attendanceData.length,
        itemBuilder: (context, index) {
          final attendanceData = attendanceProvider.attendanceData[index];
          return ListTile(
            title: Text(DateFormat('dd-MM-yyyy').format(attendanceData.date)),
            tileColor: attendanceData.status == 'attend'
                ? Colors.green.shade200
                : Colors.red.shade200, // Set color based on status
          );
        },
      ),
    );
  }
}
