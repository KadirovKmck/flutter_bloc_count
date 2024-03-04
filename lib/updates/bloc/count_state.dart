// ignore_for_file: must_be_immutable

part of 'count_bloc.dart';

@immutable
sealed class CountState {
  int counted = 0;
  CountState({required this.counted});
}

final class CountInitial extends CountState {
  CountInitial({required super.counted});
}

final class CountAddState extends CountState {
  CountAddState(int countAdd) : super(counted: countAdd);
}

final class CountRemoveState extends CountState {
  CountRemoveState(int countRemove) : super(counted: countRemove);
}
