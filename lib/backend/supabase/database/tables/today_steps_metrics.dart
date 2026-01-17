import '../database.dart';

class TodayStepsMetricsTable extends SupabaseTable<TodayStepsMetricsRow> {
  @override
  String get tableName => 'today_steps_metrics';

  @override
  TodayStepsMetricsRow createRow(Map<String, dynamic> data) =>
      TodayStepsMetricsRow(data);
}

class TodayStepsMetricsRow extends SupabaseDataRow {
  TodayStepsMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TodayStepsMetricsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get steps => getField<double>('steps');
  set steps(double? value) => setField<double>('steps', value);

  int? get dailyStepsGoal => getField<int>('daily_steps_goal');
  set dailyStepsGoal(int? value) => setField<int>('daily_steps_goal', value);

  double? get stepsProgress => getField<double>('steps_progress');
  set stepsProgress(double? value) => setField<double>('steps_progress', value);
}
