import '../database.dart';

class RoomVisitsDailyWithHighlightTable
    extends SupabaseTable<RoomVisitsDailyWithHighlightRow> {
  @override
  String get tableName => 'room_visits_daily_with_highlight';

  @override
  RoomVisitsDailyWithHighlightRow createRow(Map<String, dynamic> data) =>
      RoomVisitsDailyWithHighlightRow(data);
}

class RoomVisitsDailyWithHighlightRow extends SupabaseDataRow {
  RoomVisitsDailyWithHighlightRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoomVisitsDailyWithHighlightTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get day => getField<DateTime>('day');
  set day(DateTime? value) => setField<DateTime>('day', value);

  String? get room => getField<String>('room');
  set room(String? value) => setField<String>('room', value);

  int? get visitsCount => getField<int>('visits_count');
  set visitsCount(int? value) => setField<int>('visits_count', value);

  bool? get isMostVisited => getField<bool>('is_most_visited');
  set isMostVisited(bool? value) => setField<bool>('is_most_visited', value);
}
