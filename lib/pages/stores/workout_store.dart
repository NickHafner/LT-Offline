import 'package:lt/services/workout/models/workout.dart';
import 'package:lt/services/apis/workout_service.dart';
import 'package:mobx/mobx.dart';
part 'workout_store.g.dart';

class WorkoutStore = _WorkoutStoreBase with _$WorkoutStore;

enum StoreState { initial, loading, loaded }

abstract class _WorkoutStoreBase with Store {
  late final WorkoutService workoutService;

  _WorkoutStoreBase({required this.workoutService});

  @observable
  ObservableFuture<List<Workout>> _workouts;
  @observable
  List<Workout> workouts;
  @observable
  String errorMsg = "Undefined Error";

  @computed
  StoreState get state {
    if (_workouts == null || _workouts == FutureStatus.rejected) {
      return StoreState.initial;
    }

    return _workouts.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  setWorkouts(List<Workout> workouts) {
    this.workouts = workouts;
  }
}
