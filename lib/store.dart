// store.dart
import 'package:redux/redux.dart';
import 'app_state.dart';
import 'reducers.dart';

Store<AppState> createStore() {
  return Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
  );
}
