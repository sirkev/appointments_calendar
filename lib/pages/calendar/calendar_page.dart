import 'package:appointment_management_system/data/data_source.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return SfCalendar(
      view: CalendarView.week,
      blackoutDates: [DateTime.now().add(const Duration(days: 1))],
      dataSource: DataSource(getAppointments()),
      monthViewSettings: const MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
    );
  }
}
