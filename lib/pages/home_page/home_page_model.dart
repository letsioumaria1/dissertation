import '/components/custom_user_note_widget.dart';
import '/components/mood_component_widget.dart';
import '/components/to_do_list_widget.dart';
import '/components/today_summary_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool taskMorningWorkoutDone = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for MoodComponent component.
  late MoodComponentModel moodComponentModel;
  // Model for TodaySummary component.
  late TodaySummaryModel todaySummaryModel;
  // Model for ToDoList component.
  late ToDoListModel toDoListModel;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    moodComponentModel = createModel(context, () => MoodComponentModel());
    todaySummaryModel = createModel(context, () => TodaySummaryModel());
    toDoListModel = createModel(context, () => ToDoListModel());
  }

  @override
  void dispose() {
    moodComponentModel.dispose();
    todaySummaryModel.dispose();
    toDoListModel.dispose();
  }
}
