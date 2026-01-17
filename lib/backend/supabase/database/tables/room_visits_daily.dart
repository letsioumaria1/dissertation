import '../database.dart';

class RoomVisitsDailyTable extends SupabaseTable<RoomVisitsDailyRow> {
  @override
  String get tableName => 'room_visits_daily';

  @override
  RoomVisitsDailyRow createRow(Map<String, dynamic> data) =>
      RoomVisitsDailyRow(data);
}

class RoomVisitsDailyRow extends SupabaseDataRow {
  RoomVisitsDailyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoomVisitsDailyTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  String? get room => getField<String>('room');
  set room(String? value) => setField<String>('room', value);

  int? get visitsCount => getField<int>('visits_count');
  set visitsCount(int? value) => setField<int>('visits_count', value);
}
