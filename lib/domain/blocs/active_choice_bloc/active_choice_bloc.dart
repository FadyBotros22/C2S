import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ActiveChoiceEvent {}

class ChangeChoiceEvent extends ActiveChoiceEvent {
  final bool? object;
  ChangeChoiceEvent(this.object);
}

class ChangeChoiceProgramTypeEvent extends ActiveChoiceEvent {
  final String? programType;
  ChangeChoiceProgramTypeEvent(this.programType);
}

class ActiveChoiceBloc extends Bloc<ActiveChoiceEvent, int> {
  ActiveChoiceBloc() : super(0) {
    // Handle LoadEntryEvent
    on<ChangeChoiceEvent>((event, emit) async {
      emit(event.object == null ? 0 : (event.object! ? 1 : 2));
    });

    on<ChangeChoiceProgramTypeEvent>((event, emit) async {
      if (event.programType == null) {
        emit(0);
      } else if (event.programType == 'clearesult') {
        emit(1);
      } else if (event.programType == 'rise') {
        emit(2);
      } else if (event.programType == 'self_help') {
        emit(3);
      } else {
        emit(4);
      }
    });
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
