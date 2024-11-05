import 'package:freezed_annotation/freezed_annotation.dart';

part 'final_walkthrough_checklist.freezed.dart';
part 'final_walkthrough_checklist.g.dart';

@freezed
class FinalWalkthroughChecklist with _$FinalWalkthroughChecklist {
  const factory FinalWalkthroughChecklist({
    String? airSealing,
    String? zonalPressure,
    String? accuVents,
    String? finishedAttic,
    String? certificateofInsulation,
    String? generalQualityPictures,
  }) = _FinalWalkthroughChecklist;

  factory FinalWalkthroughChecklist.fromJson(Map<String, dynamic> json) =>
      _$FinalWalkthroughChecklistFromJson(json);
}
