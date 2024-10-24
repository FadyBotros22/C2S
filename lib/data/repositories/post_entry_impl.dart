import 'package:c2s/data/json_data/post_entries_request_data.dart';
import 'package:c2s/data/remote/api_service.dart';
import 'package:c2s/domain/repositories/abstract_post_entry_repo.dart';
import 'package:flutter/cupertino.dart';
import '../../components/snakbar.dart';
import '../json_data/post_entries_response_data.dart';

class PostEntryRepoImpl implements AbstractPostEntryRepo {
  final ApiService _apiService;

  PostEntryRepoImpl(this._apiService);

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
