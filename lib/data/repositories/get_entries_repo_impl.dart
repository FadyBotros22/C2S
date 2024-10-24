import 'package:c2s/data/json_data/entries_response_data.dart';
import 'package:c2s/data/json_data/get_entry_response_data.dart';
import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_get_entries_repo.dart';

import 'package:flutter/cupertino.dart';

import '../../components/snakbar.dart';

class GetEntriesRepoImpl implements AbstractGetEntriesRepo {
  final ApiService _apiService;

  GetEntriesRepoImpl(this._apiService);

  @override
  Future<EntriesResponseData?> getEntries(
      BuildContext context, String token) async {
    EntriesResponseData? entriesResponse;
    try {
      entriesResponse = await _apiService.getEntries(token);
      return entriesResponse;
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
    await Future.delayed(Duration(seconds: 5));
    return getEntries(context, token);
  }

  @override
  Future<GetEntryResponseData> getEntry(
      BuildContext context, String token, String id) async {
    GetEntryResponseData? entryResponse;
    try {
      entryResponse = await _apiService.getEntry(token, id);
      return entryResponse;
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
    await Future.delayed(Duration(seconds: 5));
    return getEntry(context, token, id);
  }
}
