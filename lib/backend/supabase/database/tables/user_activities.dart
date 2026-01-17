import '../database.dart';

class UserActivitiesTable extends SupabaseTable<UserActivitiesRow> {
  @override
  String get tableName => 'user_activities';

  @override
  UserActivitiesRow createRow(Map<String, dynamic> data) =>
      UserActivitiesRow(data);
}

class UserActivitiesRow extends SupabaseDataRow {
  UserActivitiesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserActivitiesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get day => getField<DateTime>('day')!;
  set day(DateTime value) => setField<DateTime>('day', value);

  String get activity => getField<String>('activity')!;
  set activity(String value) => setField<String>('activity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
