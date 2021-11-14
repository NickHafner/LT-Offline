import 'package:lt/services/core/entities/workout.dart';
import 'package:lt/services/apis/workout_service.dart';
import 'package:mobx/mobx.dart';
part 'workout_store.g.dart';

class WorkoutStore extends _WorkoutStoreBase with _$WorkoutStore {
  WorkoutStore(WorkoutService workoutService) : super(workoutService);
}

enum StoreState { initial, loading, loaded }

abstract class _WorkoutStoreBase with Store {
  late final WorkoutService workoutService;

  _WorkoutStoreBase(this.workoutService);

  @observable
  ObservableFuture<List<Workout>>? _workouts;
  @observable
  List<Workout>? workouts;
  @observable
  String errorMsg = "Undefined Error";

  @computed
  StoreState get state {
    if (_workouts == null || _workouts == FutureStatus.rejected) {
      return StoreState.initial;
    }

    return _workouts?.status == FutureStatus.pending
        ? StoreState.loading
        : StoreState.loaded;
  }

  @action
  setWorkouts(List<Workout> workouts) {
    this.workouts = workouts;
  }

  @action
  getWorkouts(int userId) async {
    try {
      _workouts = ObservableFuture(workoutService.getWorkoutById(userId));
      workouts = await _workouts;
    } on Error {
      print(userId);
    }
  }
}
