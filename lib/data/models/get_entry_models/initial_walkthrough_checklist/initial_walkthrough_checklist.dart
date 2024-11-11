import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_walkthrough_checklist.freezed.dart';
part 'initial_walkthrough_checklist.g.dart';

@freezed
class InitialWalkthroughChecklist with _$InitialWalkthroughChecklist {
  const factory InitialWalkthroughChecklist({
    bool? knobAndTube,
    String? knobAndTubeImg,
    bool? abestos,
    String? abestosImg,
    bool? titlesOnSite,
    String? titlesOnSiteImg,
    bool? unventedDryers,
    String? unventedDryersImg,
    bool? moistureConcerns,
    String? moistureConcernsImg,
  }) = _InitialWalkthroughChecklist;

  factory InitialWalkthroughChecklist.fromJson(Map<String, dynamic> json) =>
      _$InitialWalkthroughChecklistFromJson(json);
}
