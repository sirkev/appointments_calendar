import 'package:flutter/material.dart';

import '../calendar/calendar_loadmore.dart';
import '../calendar/drag_and_drop_calendar.dart';
import '../calendar/getting_started.dart';
import '../calendar/shift_scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('calendar widget'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Appointments',
                ),
                Tab(
                  text: 'Drag and drop',
                ),
                Tab(
                  text: 'Shift and Appointments',
                ),
                Tab(
                  text: 'load more',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              GettingStartedCalendar(const ValueKey('key0')),
              DragAndDropCalendar(const ValueKey('key1')),
              ShiftScheduler(const ValueKey('key2')),
              LoadMoreCalendar(const ValueKey('key3')),
            ],
          ),
        ),
      ),
    );
  }
}
