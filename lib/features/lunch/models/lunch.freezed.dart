// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lunch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Lunch {
  List<String> get dishes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LunchCopyWith<Lunch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LunchCopyWith<$Res> {
  factory $LunchCopyWith(Lunch value, $Res Function(Lunch) then) =
      _$LunchCopyWithImpl<$Res, Lunch>;
  @useResult
  $Res call({List<String> dishes});
}

/// @nodoc
class _$LunchCopyWithImpl<$Res, $Val extends Lunch>
    implements $LunchCopyWith<$Res> {
  _$LunchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LunchCopyWith<$Res> implements $LunchCopyWith<$Res> {
  factory _$$_LunchCopyWith(_$_Lunch value, $Res Function(_$_Lunch) then) =
      __$$_LunchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> dishes});
}

/// @nodoc
class __$$_LunchCopyWithImpl<$Res> extends _$LunchCopyWithImpl<$Res, _$_Lunch>
    implements _$$_LunchCopyWith<$Res> {
  __$$_LunchCopyWithImpl(_$_Lunch _value, $Res Function(_$_Lunch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
  }) {
    return _then(_$_Lunch(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_Lunch extends _Lunch {
  _$_Lunch({required final List<String> dishes})
      : _dishes = dishes,
        super._();

  final List<String> _dishes;
  @override
  List<String> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  String toString() {
    return 'Lunch(dishes: $dishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lunch &&
            const DeepCollectionEquality().equals(other._dishes, _dishes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LunchCopyWith<_$_Lunch> get copyWith =>
      __$$_LunchCopyWithImpl<_$_Lunch>(this, _$identity);
}

abstract class _Lunch extends Lunch {
  factory _Lunch({required final List<String> dishes}) = _$_Lunch;
  _Lunch._() : super._();

  @override
  List<String> get dishes;
  @override
  @JsonKey(ignore: true)
  _$$_LunchCopyWith<_$_Lunch> get copyWith =>
      throw _privateConstructorUsedError;
}
