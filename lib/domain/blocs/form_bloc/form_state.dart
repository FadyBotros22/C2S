import '../../../data/json_data/get_entry_response_data.dart';

abstract class FormState {}

class FormInitial extends FormState {}

class FormLoading extends FormState {}

class FormLoaded extends FormState {
  final GetEntryResponseData? entryData;
  FormLoaded({this.entryData});
}

class FormError extends FormState {
  final String message;
  final GetEntryResponseData entryData;
  FormError(this.message, this.entryData);
}

class FormSubmitted extends FormState {
  final String? id;
  final String screen;
  FormSubmitted({this.id, required this.screen});
}

class SubmitErrorState extends FormState {}

class NavigateBack extends FormState {}
