import 'package:flutter/cupertino.dart';
import '../../data/json_data/entries_response_data.dart';
import '../../data/json_data/get_entry_response_data.dart';
import '../../data/json_data/post_entries_request_data.dart';

abstract class AbstractEntriesRepo {
  Future<String> postEntry(BuildContext context, String token,
      PostEntriesRequestData postEntriesRequestData);

  Future<bool> patchEntry(BuildContext context, String token, String id,
      Map<String, dynamic> patchData);
  Future<EntriesResponseData?> getEntries(BuildContext context, String token);

  Future<GetEntryResponseData> getEntry(
      BuildContext context, String token, String id);
}
