import 'package:c2s/data/models/get_all_entries_models/get_entries_response_data/get_entries_response_data.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(true) bool isLoading,
    String? loadingErrMessage,
    EntriesResponseData? entriesResponse,
    bool? isEmpty,
    bool? isLogout,
  }) = _HomeState;
}
