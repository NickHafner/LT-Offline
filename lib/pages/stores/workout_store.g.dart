// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WorkoutStore on _WorkoutStoreBase, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_WorkoutStoreBase.state'))
          .value;

  final _$_workoutsAtom = Atom(name: '_WorkoutStoreBase._workouts');

  @override
  ObservableFuture<List<Workout>>? get _workouts {
    _$_workoutsAtom.reportRead();
    return super._workouts;
  }

  @override
  set _workouts(ObservableFuture<List<Workout>>? value) {
    _$_workoutsAtom.reportWrite(value, super._workouts, () {
      super._workouts = value;
    });
  }

  final _$workoutsAtom = Atom(name: '_WorkoutStoreBase.workouts');

  @override
  List<Workout>? get workouts {
    _$workoutsAtom.reportRead();
    return super.workouts;
  }

  @override
  set workouts(List<Workout>? value) {
    _$workoutsAtom.reportWrite(value, super.workouts, () {
      super.workouts = value;
    });
  }

  final _$errorMsgAtom = Atom(name: '_WorkoutStoreBase.errorMsg');

  @override
  String get errorMsg {
    _$errorMsgAtom.reportRead();
    return super.errorMsg;
  }

  @override
  set errorMsg(String value) {
    _$errorMsgAtom.reportWrite(value, super.errorMsg, () {
      super.errorMsg = value;
    });
  }

  final _$getWorkoutsAsyncAction = AsyncAction('_WorkoutStoreBase.getWorkouts');

  @override
  Future getWorkouts(int userId) {
    return _$getWorkoutsAsyncAction.run(() => super.getWorkouts(userId));
  }

  final _$_WorkoutStoreBaseActionController =
      ActionController(name: '_WorkoutStoreBase');

  @override
  dynamic setWorkouts(List<Workout> workouts) {
    final _$actionInfo = _$_WorkoutStoreBaseActionController.startAction(
        name: '_WorkoutStoreBase.setWorkouts');
    try {
      return super.setWorkouts(workouts);
    } finally {
      _$_WorkoutStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workouts: ${workouts},
errorMsg: ${errorMsg},
state: ${state}
    ''';
  }
}
