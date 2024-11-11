import 'package:freezed_annotation/freezed_annotation.dart';

import '../final_walkthrough_checklist/final_walkthrough_checklist.dart';

part 'final_walkthrough.freezed.dart';
part 'final_walkthrough.g.dart';

@freezed
class FinalWalkthrough with _$FinalWalkthrough {
  const factory FinalWalkthrough({
    FinalWalkthroughChecklist? checklist,
    List<String>? selfHelpImgs,
    bool? contractChanges,
    String? changeOrderBy,
    String? changeOrdersSpecification,
    List<String>? changeOrderPics,
    String? notes,
    int? postBlowerDoor,
    String? postBlowerDoorPic,
    String? certificateOfInsulationPostedNearElectricalPanel,
    bool? leftConfirmation,
    bool? bathroomConfirmation,
    List<String>? qualityPics,
    String? customerReview,
    String? contactMethod,
    String? email,
    String? phoneNumber,
  }) = _FinalWalkthrough;

  factory FinalWalkthrough.fromJson(Map<String, dynamic> json) =>
      _$FinalWalkthroughFromJson(json);
}
