import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'count_event.dart';
part 'count_state.dart';

class CountBloc extends Bloc<CountEvent, CountState> {
  CountBloc() : super(CountInitial(counted: 0)) {
    on<CountAddEvent>((event, emit) {
      emit(CountAddState(state.counted + 1));
    });
    on<CountRemoveEvent>((event, emit) {
      emit(CountRemoveState(state.counted - 1));
    });
  }
}
