import '../database.dart';

class LatestWeightSummaryTable extends SupabaseTable<LatestWeightSummaryRow> {
  @override
  String get tableName => 'latest_weight_summary';

  @override
  LatestWeightSummaryRow createRow(Map<String, dynamic> data) =>
      LatestWeightSummaryRow(data);
}

class LatestWeightSummaryRow extends SupabaseDataRow {
  LatestWeightSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestWeightSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get weightKg => getField<double>('weight_kg');
  set weightKg(double? value) => setField<double>('weight_kg', value);

  double? get bodyMuscle => getField<double>('body_muscle');
  set bodyMuscle(double? value) => setField<double>('body_muscle', value);

  double? get freeFatMass => getField<double>('free_fat_mass');
  set freeFatMass(double? value) => setField<double>('free_fat_mass', value);

  double? get heightCm => getField<double>('height_cm');
  set heightCm(double? value) => setField<double>('height_cm', value);

  double? get bmi => getField<double>('bmi');
  set bmi(double? value) => setField<double>('bmi', value);
}
