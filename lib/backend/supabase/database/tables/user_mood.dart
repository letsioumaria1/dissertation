import '../database.dart';

class UserMoodTable extends SupabaseTable<UserMoodRow> {
  @override
  String get tableName => 'user_mood';

  @override
  UserMoodRow createRow(Map<String, dynamic> data) => UserMoodRow(data);
}

class UserMoodRow extends SupabaseDataRow {
  UserMoodRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserMoodTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get day => getField<DateTime>('day')!;
  set day(DateTime value) => setField<DateTime>('day', value);

  String get mood => getField<String>('mood')!;
  set mood(String value) => setField<String>('mood', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
