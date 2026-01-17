import '../database.dart';

class RoomPresenceEventsTable extends SupabaseTable<RoomPresenceEventsRow> {
  @override
  String get tableName => 'room_presence_events';

  @override
  RoomPresenceEventsRow createRow(Map<String, dynamic> data) =>
      RoomPresenceEventsRow(data);
}

class RoomPresenceEventsRow extends SupabaseDataRow {
  RoomPresenceEventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoomPresenceEventsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get room => getField<String>('room')!;
  set room(String value) => setField<String>('room', value);

  DateTime get eventTimestamp => getField<DateTime>('event_timestamp')!;
  set eventTimestamp(DateTime value) =>
      setField<DateTime>('event_timestamp', value);

  DateTime? get dateEntered => getField<DateTime>('date_entered');
  set dateEntered(DateTime? value) => setField<DateTime>('date_entered', value);

  int? get totalActivations => getField<int>('total_activations');
  set totalActivations(int? value) => setField<int>('total_activations', value);

  int? get recentActivations => getField<int>('recent_activations');
  set recentActivations(int? value) =>
      setField<int>('recent_activations', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
