import 'package:flutter/cupertino.dart';

import '../../../data/json_data/entries_response_data.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    bool? isLoading,
    String? loadingErrMessage,
    EntriesResponseData? entriesResponse,
    bool? isEmpty,
    bool? isLogout,
  }) = _HomeState;
}

// class LogoutState extends HomeState {} // implement in the page

// class SortState extends HomeState {  // implement in the bloc
//   EntriesResponseData entriesResponse;
//   SortState(this.entriesResponse);
// }

// class NewEntryState extends HomeState {} // implement in the page

// class EditEntryState extends HomeState { // implement in the page
//   String entryId;
//   Widget screen;
//   EditEntryState(this.entryId, this.screen);
// }

// class ErrorState extends HomeState { // implement in bloc
//   String message;
//   EntriesResponseData entriesResponse;
//
//   ErrorState(this.message, this.entriesResponse);
// }

// class LogoutErrorState extends HomeState {} // implement in bloc
