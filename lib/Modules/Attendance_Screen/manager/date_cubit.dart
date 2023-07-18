import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/event.dart';

part 'date_state.dart';

class DateCubit extends Cubit<DateState> {
  DateCubit() : super(DateInitial());

  late final ValueNotifier<List<Event>> selectedEvents;
  CalendarFormat calendarFormat = CalendarFormat.month;
  RangeSelectionMode rangeSelectionMode = RangeSelectionMode
      .toggledOff;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay = DateTime.now();
  DateTime? rangeStart;
  DateTime? rangeEnd;

  List<Event> getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ...getEventsForDay(d),
    ];
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(selectedDay, selectedDay)) {

        selectedDay = selectedDay;
        focusedDay = focusedDay;
        rangeStart = null; // Important to clean those
        rangeEnd = null;
        rangeSelectionMode = RangeSelectionMode.toggledOff;
    emit(DateSelected());

      selectedEvents.value = getEventsForDay(selectedDay);
    }
  }

  void onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
      selectedDay = null;
      focusedDay = focusedDay;
      rangeStart = start;
      rangeEnd = end;
      rangeSelectionMode = RangeSelectionMode.toggledOn;
   emit(DateRangeSelected());

    // `start` or `end` could be null
    if (start != null && end != null) {
      selectedEvents.value = getEventsForRange(start, end);
    } else if (start != null) {
      selectedEvents.value = getEventsForDay(start);
    } else if (end != null) {
      selectedEvents.value = getEventsForDay(end);
    }
  }
}
