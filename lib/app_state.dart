// app_state.dart
import 'package:redux/redux.dart';

class AppState {
  final Duration elapsedTime;
  final List<String> laps;
  final bool isRunning;

  AppState({
    required this.elapsedTime,
    required this.laps,
    required this.isRunning,
  });

  AppState.initial()
      : elapsedTime = Duration.zero,
        laps = [],
        isRunning = false;

  AppState copyWith({
    Duration? elapsedTime,
    List<String>? laps,
    bool? isRunning,
  }) {
    return AppState(
      elapsedTime: elapsedTime ?? this.elapsedTime,
      laps: laps ?? this.laps,
      isRunning: isRunning ?? this.isRunning,
    );
  }
}
