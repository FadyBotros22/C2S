// import 'api_service.dart';
// import 'package:c2s/statics/dio.dart';
// import 'statics/preferences.dart';
// import 'data/post_entries_request_data.dart';
// class APIBrain{
//   final ApiService apiService = ApiService(DioClass.getDio());
//   var token = () async => (await Preferences.getPreferences()).getString('token').toString();
//
//   Future<String> postEntry() async {
//     PostEntriesRequestData postEntriesRequestData =
//     PostEntriesRequestData(
//         programType: programType!,
//         doeJob: doeJob ?? false,
//         date: date!,
//         address: address!,
//         city: city!,
//         coordinates: Coordinates(latitude: 0, longitude: 0),
//         jobId: jobId!);
//
//     PostEntriesResponseData postEntriesResponseData =
//     await apiService.postEntry(token, postEntriesRequestData);
//     return postEntriesResponseData.data.id;
//   }
//
// }
