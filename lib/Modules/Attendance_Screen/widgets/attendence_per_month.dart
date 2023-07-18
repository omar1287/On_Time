import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:on_time/Modules/Attendance_Screen/widgets/row_of_widget.dart';
import 'package:on_time/Modules/Task_Screen/details_screen/manager/details_cubit.dart';
import 'package:on_time/core/utils/app_styles.dart';
import 'package:table_calendar/table_calendar.dart';

import 'details_per_day.dart';
import 'event.dart';

class AttendencePerMonth extends StatefulWidget {
  const AttendencePerMonth({Key? key}) : super(key: key);

  @override
  State<AttendencePerMonth> createState() => _AttendencePerMonthState();
}

class _AttendencePerMonthState extends State<AttendencePerMonth> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height *0.68,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: const CalendarStyle(
              // Use `CalendarStyle` to customize the UI
              outsideDaysVisible: false,
              selectedDecoration: BoxDecoration(
                color: Color(0xFFFDDD81),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              weekendDecoration: BoxDecoration(
                color: Color(0xFFC3C3C3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          DetailsCubit().buildSizedBox(16),
          Row(
            children: [
              const RowOfWidget(title: 'On-Time', color: 0xFF03C655),
              DetailsCubit().buildSizedBoxWidth(24),
              const RowOfWidget(title: 'Late', color: 0xFFFBBC04),
              DetailsCubit().buildSizedBoxWidth(24),
              const RowOfWidget(title: 'Leave', color: 0xFFF2534D),
              DetailsCubit().buildSizedBoxWidth(24),
              const RowOfWidget(title: 'Holiday', color: 0xFF868686),
            ],
          ),
          DetailsCubit().buildSizedBox(32),
          const SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    DetailsPerDay(
                      text: 'On Time',
                      color: 0xFF03C655,
                    ),
                     DetailsPerDay(
                      text: 'Late',
                      color: 0xFFFBBC04,
                    ),
                  ],
                ),
                Row(
                  children: [
                    DetailsPerDay(
                      text: 'Leave',
                      color: 0xFFF2534D,
                    ),
                    DetailsPerDay(
                      text: 'Holidy',
                      color: 0xFF868686,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


