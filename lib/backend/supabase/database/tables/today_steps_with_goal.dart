import '../database.dart';

class TodayStepsWithGoalTable extends SupabaseTable<TodayStepsWithGoalRow> {
  @override
  String get tableName => 'today_steps_with_goal';

  @override
  TodayStepsWithGoalRow createRow(Map<String, dynamic> data) =>
      TodayStepsWithGoalRow(data);
}

class TodayStepsWithGoalRow extends SupabaseDataRow {
  TodayStepsWithGoalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TodayStepsWithGoalTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get stepsToday => getField<int>('steps_today');
  set stepsToday(int? value) => setField<int>('steps_today', value);

  int? get dailyStepsGoal => getField<int>('daily_steps_goal');
  set dailyStepsGoal(int? value) => setField<int>('daily_steps_goal', value);

  double? get progressPercent => getField<double>('progress_percent');
  set progressPercent(double? value) =>
      setField<double>('progress_percent', value);

  double? get progressRatio => getField<double>('progress_ratio');
  set progressRatio(double? value) => setField<double>('progress_ratio', value);

  int? get remainingSteps => getField<int>('remaining_steps');
  set remainingSteps(int? value) => setField<int>('remaining_steps', value);

  String? get stepsStatus => getField<String>('steps_status');
  set stepsStatus(String? value) => setField<String>('steps_status', value);
}
