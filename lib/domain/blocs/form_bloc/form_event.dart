import 'package:c2s/presentation/screens/form%20screens/form_screen1.dart';
import 'package:flutter/material.dart';

abstract class FormEvent {}

class LoadEntryEvent extends FormEvent {
  final String token;
  final String id;
  LoadEntryEvent(this.token, this.id);
}

class PatchEntryEvent extends FormEvent {
  final String token;
  final String? id;
  final dynamic data;
  final Widget screen;

  PatchEntryEvent(this.token, this.id, this.data, this.screen);
}

class SubmitClicked extends FormEvent {
  final String token;
  final String id;
  final Map<String, dynamic> data;
  final String screen;
  SubmitClicked(this.token, this.id, this.data, this.screen);
}

class UpdateData extends FormEvent {
  ProgramType? programType;
  bool? doeJob;
  String? address;
  String? city;
  String? createdBy;
  String? jobId;
  String? date;

  // InitialWalkthrough? initialWalkthrough;
  bool? knobAndTube;
  bool? abestos;
  bool? titlesOnSite;
  bool? unventedDryers;
  bool? moistureConcerns;
  bool? blowerDoorStatus;
  int? blowerStartingValue;
  String? initialNotes;
  String? heatingSystemPic;
  String? waterHeaterPic;
  List<String>? concernsPic;

  // AirSealing? airSealing;
  bool? airOnWorkOrder;
  String? airNotes;
  List<String>? sealingQualityPic;

  // AtticInsulation? atticInsulation;
  bool? atticOnWorkOrder;
  String? inaccurateMeasurementsNotes;
  String? atticNotes;
  List<String>? atticInsulationPic;

  // WallInsulation? wallInsulation;
  bool? wallOnWorkOrder;
  String? wallNotes;

  // FinalWalkthrough? finalWalkthrough;
  String? finalNotes;
  bool? leftConfirmation;
  bool? bathroomConfirmation;
  List<String>? qualityPics;

  UpdateData({
    this.qualityPics,
    this.leftConfirmation,
    this.bathroomConfirmation,
    this.atticInsulationPic,
    this.inaccurateMeasurementsNotes,
    this.sealingQualityPic,
    this.concernsPic,
    this.waterHeaterPic,
    this.heatingSystemPic,
    this.blowerStartingValue,
    this.blowerDoorStatus,
    this.unventedDryers,
    this.titlesOnSite,
    this.moistureConcerns,
    this.abestos,
    this.knobAndTube,
    this.airNotes,
    this.airOnWorkOrder,
    this.atticNotes,
    this.atticOnWorkOrder,
    this.finalNotes,
    this.initialNotes,
    this.wallNotes,
    this.wallOnWorkOrder,
    this.programType,
    this.date,
    this.doeJob,
    this.jobId,
    this.city,
    this.address,
    this.createdBy,
  });
}
