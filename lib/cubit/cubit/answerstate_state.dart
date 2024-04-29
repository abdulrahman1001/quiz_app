part of 'answerstate_cubit.dart';

@immutable
sealed class AnswerstateState {}

final class AnswerstateInitial extends AnswerstateState {}

final class Answerstatetrue extends AnswerstateState {}

final class Answerstatefalse extends AnswerstateState {}
