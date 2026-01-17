import '../database.dart';

class WeightMetricsTable extends SupabaseTable<WeightMetricsRow> {
  @override
  String get tableName => 'weight_metrics';

  @override
  WeightMetricsRow createRow(Map<String, dynamic> data) =>
      WeightMetricsRow(data);
}

class WeightMetricsRow extends SupabaseDataRow {
  WeightMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeightMetricsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get metricKey => getField<String>('metric_key')!;
  set metricKey(String value) => setField<String>('metric_key', value);

  double get metricValue => getField<double>('metric_value')!;
  set metricValue(double value) => setField<double>('metric_value', value);

  DateTime get datetime => getField<DateTime>('datetime')!;
  set datetime(DateTime value) => setField<DateTime>('datetime', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
