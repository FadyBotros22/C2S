import 'package:flutter/cupertino.dart';
import '../../data/json_data/post_entries_request_data.dart';

abstract class AbstractPostEntryRepo {
  Future<String> postEntry(BuildContext context, String token,
      PostEntriesRequestData postEntriesRequestData);
  Future<bool> patchEntry(BuildContext context, String token, String id,
      Map<String, dynamic> patchData);
}
