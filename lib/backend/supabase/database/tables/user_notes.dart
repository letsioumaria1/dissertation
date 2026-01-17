import '../database.dart';

class UserNotesTable extends SupabaseTable<UserNotesRow> {
  @override
  String get tableName => 'user_notes';

  @override
  UserNotesRow createRow(Map<String, dynamic> data) => UserNotesRow(data);
}

class UserNotesRow extends SupabaseDataRow {
  UserNotesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserNotesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get day => getField<DateTime>('day')!;
  set day(DateTime value) => setField<DateTime>('day', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get noteText => getField<String>('note_text')!;
  set noteText(String value) => setField<String>('note_text', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
