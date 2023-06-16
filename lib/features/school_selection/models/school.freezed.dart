// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$School {
  /// The name of the school.
  ///
  /// This will be visible to the user.
  String get name => throw _privateConstructorUsedError;

  /// The identifier for the school when retrieving rss feeds from Skolmaten.
  String get skolmatenId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call({String name, String skolmatenId});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? skolmatenId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skolmatenId: null == skolmatenId
          ? _value.skolmatenId
          : skolmatenId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchoolCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$_SchoolCopyWith(_$_School value, $Res Function(_$_School) then) =
      __$$_SchoolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String skolmatenId});
}

/// @nodoc
class __$$_SchoolCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$_School>
    implements _$$_SchoolCopyWith<$Res> {
  __$$_SchoolCopyWithImpl(_$_School _value, $Res Function(_$_School) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? skolmatenId = null,
  }) {
    return _then(_$_School(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skolmatenId: null == skolmatenId
          ? _value.skolmatenId
          : skolmatenId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_School implements _School {
  _$_School({required this.name, required this.skolmatenId});

  /// The name of the school.
  ///
  /// This will be visible to the user.
  @override
  final String name;

  /// The identifier for the school when retrieving rss feeds from Skolmaten.
  @override
  final String skolmatenId;

  @override
  String toString() {
    return 'School(name: $name, skolmatenId: $skolmatenId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_School &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.skolmatenId, skolmatenId) ||
                other.skolmatenId == skolmatenId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, skolmatenId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchoolCopyWith<_$_School> get copyWith =>
      __$$_SchoolCopyWithImpl<_$_School>(this, _$identity);
}

abstract class _School implements School {
  factory _School(
      {required final String name,
      required final String skolmatenId}) = _$_School;

  @override

  /// The name of the school.
  ///
  /// This will be visible to the user.
  String get name;
  @override

  /// The identifier for the school when retrieving rss feeds from Skolmaten.
  String get skolmatenId;
  @override
  @JsonKey(ignore: true)
  _$$_SchoolCopyWith<_$_School> get copyWith =>
      throw _privateConstructorUsedError;
}
