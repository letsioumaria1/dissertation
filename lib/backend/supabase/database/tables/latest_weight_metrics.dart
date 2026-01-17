import '../database.dart';

class LatestWeightMetricsTable extends SupabaseTable<LatestWeightMetricsRow> {
  @override
  String get tableName => 'latest_weight_metrics';

  @override
  LatestWeightMetricsRow createRow(Map<String, dynamic> data) =>
      LatestWeightMetricsRow(data);
}

class LatestWeightMetricsRow extends SupabaseDataRow {
  LatestWeightMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestWeightMetricsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get metricKey => getField<String>('metric_key');
  set metricKey(String? value) => setField<String>('metric_key', value);

  double? get metricValue => getField<double>('metric_value');
  set metricValue(double? value) => setField<double>('metric_value', value);

  DateTime? get datetime => getField<DateTime>('datetime');
  set datetime(DateTime? value) => setField<DateTime>('datetime', value);
}
