import '../database.dart';

class MostVisitedRoomDailyTable extends SupabaseTable<MostVisitedRoomDailyRow> {
  @override
  String get tableName => 'most_visited_room_daily';

  @override
  MostVisitedRoomDailyRow createRow(Map<String, dynamic> data) =>
      MostVisitedRoomDailyRow(data);
}

class MostVisitedRoomDailyRow extends SupabaseDataRow {
  MostVisitedRoomDailyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MostVisitedRoomDailyTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  String? get mostVisitedRoom => getField<String>('most_visited_room');
  set mostVisitedRoom(String? value) =>
      setField<String>('most_visited_room', value);

  int? get visitsCount => getField<int>('visits_count');
  set visitsCount(int? value) => setField<int>('visits_count', value);
}
