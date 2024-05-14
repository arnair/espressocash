// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Coin {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  num get usd => throw _privateConstructorUsedError;
  List<CoinHistory> get history => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res, Coin>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      num usd,
      List<CoinHistory> history});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res, $Val extends Coin>
    implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? usd = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as num,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CoinHistory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinImplCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$$CoinImplCopyWith(
          _$CoinImpl value, $Res Function(_$CoinImpl) then) =
      __$$CoinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      num usd,
      List<CoinHistory> history});
}

/// @nodoc
class __$$CoinImplCopyWithImpl<$Res>
    extends _$CoinCopyWithImpl<$Res, _$CoinImpl>
    implements _$$CoinImplCopyWith<$Res> {
  __$$CoinImplCopyWithImpl(_$CoinImpl _value, $Res Function(_$CoinImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? usd = null,
    Object? history = null,
  }) {
    return _then(_$CoinImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as num,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CoinHistory>,
    ));
  }
}

/// @nodoc

class _$CoinImpl implements _Coin {
  const _$CoinImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.usd,
      required final List<CoinHistory> history})
      : _history = history;

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final num usd;
  final List<CoinHistory> _history;
  @override
  List<CoinHistory> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'Coin(id: $id, name: $name, description: $description, usd: $usd, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.usd, usd) || other.usd == usd) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, usd,
      const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinImplCopyWith<_$CoinImpl> get copyWith =>
      __$$CoinImplCopyWithImpl<_$CoinImpl>(this, _$identity);
}

abstract class _Coin implements Coin {
  const factory _Coin(
      {required final String id,
      required final String name,
      required final String description,
      required final num usd,
      required final List<CoinHistory> history}) = _$CoinImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  num get usd;
  @override
  List<CoinHistory> get history;
  @override
  @JsonKey(ignore: true)
  _$$CoinImplCopyWith<_$CoinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
