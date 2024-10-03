// reducers.dart
import 'package:redux/redux.dart';
import 'app_state.dart';
import 'actions.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is StartTimerAction) {
    return state.copyWith(isRunning: true);
  } else if (action is PauseTimerAction) {
    return state.copyWith(isRunning: false);
  } else if (action is ResetTimerAction) {
    return AppState.initial();
  } else if (action is LapTimerAction) {
    return state.copyWith(laps: List.from(state.laps)..add(action.lapTime));
  }
  return state;
}
