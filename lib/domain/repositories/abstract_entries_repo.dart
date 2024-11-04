import 'package:flutter/cupertino.dart';
import '../../data/json_data/entries_response_data.dart';
import '../../data/json_data/get_entry_response_data/get_entry_response_data.dart';
import '../../data/json_data/post_entries_request_data.dart';

abstract class AbstractEntriesRepo {
  Future<String> postEntry(
      String token, PostEntriesRequestData postEntriesRequestData);

  Future<void> patchEntry(
      String token, String id, Map<String, dynamic> patchData);

  Future<EntriesResponseData?> getEntries(String token);

  Future<GetEntryResponseData> getEntry(String token, String id);
}
