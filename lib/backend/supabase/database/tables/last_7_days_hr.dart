import '../database.dart';

class Last7DaysHrTable extends SupabaseTable<Last7DaysHrRow> {
  @override
  String get tableName => 'last_7_days_hr';

  @override
  Last7DaysHrRow createRow(Map<String, dynamic> data) => Last7DaysHrRow(data);
}

class Last7DaysHrRow extends SupabaseDataRow {
  Last7DaysHrRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Last7DaysHrTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  double? get hr24h => getField<double>('hr_24h');
  set hr24h(double? value) => setField<double>('hr_24h', value);
}
