import '../database.dart';

class TodayHomeSummaryTable extends SupabaseTable<TodayHomeSummaryRow> {
  @override
  String get tableName => 'today_home_summary';

  @override
  TodayHomeSummaryRow createRow(Map<String, dynamic> data) =>
      TodayHomeSummaryRow(data);
}

class TodayHomeSummaryRow extends SupabaseDataRow {
  TodayHomeSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TodayHomeSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get sleepH => getField<double>('sleep_h');
  set sleepH(double? value) => setField<double>('sleep_h', value);

  double? get sleepM => getField<double>('sleep_m');
  set sleepM(double? value) => setField<double>('sleep_m', value);

  double? get stepsToday => getField<double>('steps_today');
  set stepsToday(double? value) => setField<double>('steps_today', value);

  double? get hrToday => getField<double>('hr_today');
  set hrToday(double? value) => setField<double>('hr_today', value);
}
