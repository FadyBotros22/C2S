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
  FormError(this.message);
}

class FormSubmitted extends FormState {
  final String? id;
  final String screen;
  FormSubmitted({this.id, required this.screen});
}
