import '../database.dart';

class Last7DaysSleepTable extends SupabaseTable<Last7DaysSleepRow> {
  @override
  String get tableName => 'last_7_days_sleep';

  @override
  Last7DaysSleepRow createRow(Map<String, dynamic> data) =>
      Last7DaysSleepRow(data);
}

class Last7DaysSleepRow extends SupabaseDataRow {
  Last7DaysSleepRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Last7DaysSleepTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  double? get sleepHours => getField<double>('sleep_hours');
  set sleepHours(double? value) => setField<double>('sleep_hours', value);
}
