import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hijri/hijri_calendar.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  Widget build(BuildContext context) {
    String time = DateFormat('hh:mm:ss a').format(DateTime.now());
    HijriCalendar.setLocal("ar");
    String hijri = HijriCalendar.now().toFormat("dd MMMM yyyy");

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time, style: TextStyle(fontSize: 70, color: Colors.green)),
            SizedBox(height: 10),
            Text(hijri, style: TextStyle(fontSize: 30, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
