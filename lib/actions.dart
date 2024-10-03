// actions.dart
class StartTimerAction {}
class PauseTimerAction {}
class ResetTimerAction {}
class LapTimerAction {
  final String lapTime;

  LapTimerAction(this.lapTime);
}
