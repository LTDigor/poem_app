import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appearance_state.freezed.dart';

@freezed
class AppearState with _$AppearState {
  const factory AppearState({required TextAlign align}) =
      _Appear; // null-safety and default values?
}
