import '../../../data/json_data/post_entries_request_data.dart';

abstract class FormEvent {}

class LoadEntryEvent extends FormEvent {
  final String token;
  final String id;
  LoadEntryEvent(this.token, this.id);
}

class PostEntryEvent extends FormEvent {
  final String token;
  final PostEntriesRequestData data;
  final String screen;
  PostEntryEvent(this.token, this.data, this.screen);
}

class PatchEntryEvent extends FormEvent {
  final String token;
  final String id;
  final Map<String, dynamic> data;
  final String screen;

  PatchEntryEvent(this.token, this.id, this.data, this.screen);
}
