import 'dart:core';

import 'package:syncfusion_flutter_calendar/calendar.dart';

class DataSource extends CalendarDataSource {
  DataSource(List<Appointment> source) {
    appointments = source;
  }
}

List<Appointment> getAppointments() {
  List<Appointment> bookings = <Appointment>[];
  final DateTime now = DateTime.now();
  final DateTime startTime = DateTime(now.year, now.month, now.day, 9, 10, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  bookings.add(Appointment(
      subject: 'Ronaldo Hair Style', startTime: startTime, endTime: endTime));
  return bookings;
}
