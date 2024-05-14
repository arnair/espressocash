// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinSearch _$CoinSearchFromJson(Map<String, dynamic> json) {
  return _CoinSearch.fromJson(json);
}

/// @nodoc
mixin _$CoinSearch {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinSearchCopyWith<CoinSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinSearchCopyWith<$Res> {
  factory $CoinSearchCopyWith(
          CoinSearch value, $Res Function(CoinSearch) then) =
      _$CoinSearchCopyWithImpl<$Res, CoinSearch>;
  @useResult
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class _$CoinSearchCopyWithImpl<$Res, $Val extends CoinSearch>
    implements $CoinSearchCopyWith<$Res> {
  _$CoinSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinSearchImplCopyWith<$Res>
    implements $CoinSearchCopyWith<$Res> {
  factory _$$CoinSearchImplCopyWith(
          _$CoinSearchImpl value, $Res Function(_$CoinSearchImpl) then) =
      __$$CoinSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class __$$CoinSearchImplCopyWithImpl<$Res>
    extends _$CoinSearchCopyWithImpl<$Res, _$CoinSearchImpl>
    implements _$$CoinSearchImplCopyWith<$Res> {
  __$$CoinSearchImplCopyWithImpl(
      _$CoinSearchImpl _value, $Res Function(_$CoinSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
  }) {
    return _then(_$CoinSearchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinSearchImpl implements _CoinSearch {
  const _$CoinSearchImpl(
      {required this.id, required this.symbol, required this.name});

  factory _$CoinSearchImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinSearchImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;

  @override
  String toString() {
    return 'CoinSearch(id: $id, symbol: $symbol, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinSearchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, symbol, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinSearchImplCopyWith<_$CoinSearchImpl> get copyWith =>
      __$$CoinSearchImplCopyWithImpl<_$CoinSearchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinSearchImplToJson(
      this,
    );
  }
}

abstract class _CoinSearch implements CoinSearch {
  const factory _CoinSearch(
      {required final String id,
      required final String symbol,
      required final String name}) = _$CoinSearchImpl;

  factory _CoinSearch.fromJson(Map<String, dynamic> json) =
      _$CoinSearchImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CoinSearchImplCopyWith<_$CoinSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
