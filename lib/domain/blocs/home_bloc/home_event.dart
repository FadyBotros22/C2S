abstract class HomeEvent {}

class SortClicked extends HomeEvent {}

class LogoutClicked extends HomeEvent {}

class CreateNewEntry extends HomeEvent {}

class EditExistingEntry extends HomeEvent {
  String entryId;
  int progressValue;
  EditExistingEntry(this.entryId, this.progressValue);
}

class LoadEntries extends HomeEvent {
  String token;
  LoadEntries(this.token);
}
