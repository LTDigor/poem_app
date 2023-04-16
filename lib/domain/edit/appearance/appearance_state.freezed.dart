// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appearance_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppearState {
  TextAlign get align => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppearStateCopyWith<AppearState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppearStateCopyWith<$Res> {
  factory $AppearStateCopyWith(
          AppearState value, $Res Function(AppearState) then) =
      _$AppearStateCopyWithImpl<$Res, AppearState>;

  @useResult
  $Res call({TextAlign align});
}

/// @nodoc
class _$AppearStateCopyWithImpl<$Res, $Val extends AppearState>
    implements $AppearStateCopyWith<$Res> {
  _$AppearStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? align = null,
  }) {
    return _then(_value.copyWith(
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as TextAlign,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppearCopyWith<$Res> implements $AppearStateCopyWith<$Res> {
  factory _$$_AppearCopyWith(_$_Appear value, $Res Function(_$_Appear) then) =
      __$$_AppearCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({TextAlign align});
}

/// @nodoc
class __$$_AppearCopyWithImpl<$Res>
    extends _$AppearStateCopyWithImpl<$Res, _$_Appear>
    implements _$$_AppearCopyWith<$Res> {
  __$$_AppearCopyWithImpl(_$_Appear _value, $Res Function(_$_Appear) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? align = null,
  }) {
    return _then(_$_Appear(
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as TextAlign,
    ));
  }
}

/// @nodoc

class _$_Appear implements _Appear {
  const _$_Appear({required this.align});

  @override
  final TextAlign align;

  @override
  String toString() {
    return 'AppearState(align: $align)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appear &&
            (identical(other.align, align) || other.align == align));
  }

  @override
  int get hashCode => Object.hash(runtimeType, align);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppearCopyWith<_$_Appear> get copyWith =>
      __$$_AppearCopyWithImpl<_$_Appear>(this, _$identity);
}

abstract class _Appear implements AppearState {
  const factory _Appear({required final TextAlign align}) = _$_Appear;

  @override
  TextAlign get align;

  @override
  @JsonKey(ignore: true)
  _$$_AppearCopyWith<_$_Appear> get copyWith =>
      throw _privateConstructorUsedError;
}
