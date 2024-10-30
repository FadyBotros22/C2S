import 'package:flutter/cupertino.dart';

import '../../../data/json_data/entries_response_data.dart';

abstract class HomeState {}

class InitialState extends HomeState {}

class LoadingState extends HomeState {}

class LoadingErrorState extends HomeState {
  final String message;
  LoadingErrorState(this.message);
}

class LoadedState extends HomeState {
  EntriesResponseData entriesResponse;
  LoadedState(this.entriesResponse);
}

class EmptyState extends HomeState {}

class LogoutState extends HomeState {}

class SortState extends HomeState {
  EntriesResponseData entriesResponse;
  SortState(this.entriesResponse);
}

class NewEntryState extends HomeState {}

class EditEntryState extends HomeState {
  String entryId;
  Widget screen;
  EditEntryState(this.entryId, this.screen);
}

class ErrorState extends HomeState {
  String message;
  EntriesResponseData entriesResponse;

  ErrorState(this.message, this.entriesResponse);
}

class LogoutErrorState extends HomeState {}
