abstract class HomeEvent {}

class SortClicked extends HomeEvent {}

class LogoutClicked extends HomeEvent {}

class LoadEntries extends HomeEvent {
  String token;
  LoadEntries(this.token);
}
