import '../database.dart';

class Last7DaysStepsTable extends SupabaseTable<Last7DaysStepsRow> {
  @override
  String get tableName => 'last_7_days_steps';

  @override
  Last7DaysStepsRow createRow(Map<String, dynamic> data) =>
      Last7DaysStepsRow(data);
}

class Last7DaysStepsRow extends SupabaseDataRow {
  Last7DaysStepsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Last7DaysStepsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  int? get steps => getField<int>('steps');
  set steps(int? value) => setField<int>('steps', value);

  int? get dailyStepsGoal => getField<int>('daily_steps_goal');
  set dailyStepsGoal(int? value) => setField<int>('daily_steps_goal', value);

  double? get progressRatio => getField<double>('progress_ratio');
  set progressRatio(double? value) => setField<double>('progress_ratio', value);
}
