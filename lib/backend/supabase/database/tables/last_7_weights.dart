import '../database.dart';

class Last7WeightsTable extends SupabaseTable<Last7WeightsRow> {
  @override
  String get tableName => 'last_7_weights';

  @override
  Last7WeightsRow createRow(Map<String, dynamic> data) => Last7WeightsRow(data);
}

class Last7WeightsRow extends SupabaseDataRow {
  Last7WeightsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Last7WeightsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  double? get weightKg => getField<double>('weight_kg');
  set weightKg(double? value) => setField<double>('weight_kg', value);
}
