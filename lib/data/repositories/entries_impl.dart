import 'package:c2s/data/json_data/post_entries_request_data.dart';
import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_entries_repo.dart';
import 'package:flutter/cupertino.dart';
import '../../components/snakbar.dart';
import '../json_data/entries_response_data.dart';
import '../json_data/get_entry_response_data.dart';
import '../json_data/post_entries_response_data.dart';

class EntriesRepoImpl implements AbstractEntriesRepo {
  final ApiService _apiService;

  EntriesRepoImpl(this._apiService);

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

  @override
  Future<bool> patchEntry(BuildContext context, String token, String id,
      Map<String, dynamic> patchData) async {
    try {
      await _apiService.patchEntry(id, token, patchData);
      return true;
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
      return false;
    }
  }

  @override
  Future<String> postEntry(BuildContext context, String token,
      PostEntriesRequestData postEntriesRequestData) async {
    PostEntriesResponseData postEntriesResponseData;
    try {
      postEntriesResponseData =
          await _apiService.postEntry(token, postEntriesRequestData);
      return postEntriesResponseData.data.id;
    } catch (e) {
      Snackbar().showSnackBar(
          context, "Error occurred, try connecting to active Network");
    }
    return postEntry(context, token, postEntriesRequestData);
  }
}
