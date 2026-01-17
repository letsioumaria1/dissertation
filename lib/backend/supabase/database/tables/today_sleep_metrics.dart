import '../database.dart';

class TodaySleepMetricsTable extends SupabaseTable<TodaySleepMetricsRow> {
  @override
  String get tableName => 'today_sleep_metrics';

  @override
  TodaySleepMetricsRow createRow(Map<String, dynamic> data) =>
      TodaySleepMetricsRow(data);
}

class TodaySleepMetricsRow extends SupabaseDataRow {
  TodaySleepMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TodaySleepMetricsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get sleepMinutes => getField<double>('sleep_minutes');
  set sleepMinutes(double? value) => setField<double>('sleep_minutes', value);

  double? get sleepHours => getField<double>('sleep_hours');
  set sleepHours(double? value) => setField<double>('sleep_hours', value);

  double? get sleepH => getField<double>('sleep_h');
  set sleepH(double? value) => setField<double>('sleep_h', value);

  double? get sleepM => getField<double>('sleep_m');
  set sleepM(double? value) => setField<double>('sleep_m', value);

  double? get sleepVs8h => getField<double>('sleep_vs_8h');
  set sleepVs8h(double? value) => setField<double>('sleep_vs_8h', value);
}
