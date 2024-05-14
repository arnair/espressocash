// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoinHistory {
  DateTime get date => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinHistoryCopyWith<CoinHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinHistoryCopyWith<$Res> {
  factory $CoinHistoryCopyWith(
          CoinHistory value, $Res Function(CoinHistory) then) =
      _$CoinHistoryCopyWithImpl<$Res, CoinHistory>;
  @useResult
  $Res call({DateTime date, num price});
}

/// @nodoc
class _$CoinHistoryCopyWithImpl<$Res, $Val extends CoinHistory>
    implements $CoinHistoryCopyWith<$Res> {
  _$CoinHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinHistoryImplCopyWith<$Res>
    implements $CoinHistoryCopyWith<$Res> {
  factory _$$CoinHistoryImplCopyWith(
          _$CoinHistoryImpl value, $Res Function(_$CoinHistoryImpl) then) =
      __$$CoinHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, num price});
}

/// @nodoc
class __$$CoinHistoryImplCopyWithImpl<$Res>
    extends _$CoinHistoryCopyWithImpl<$Res, _$CoinHistoryImpl>
    implements _$$CoinHistoryImplCopyWith<$Res> {
  __$$CoinHistoryImplCopyWithImpl(
      _$CoinHistoryImpl _value, $Res Function(_$CoinHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? price = null,
  }) {
    return _then(_$CoinHistoryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$CoinHistoryImpl implements _CoinHistory {
  const _$CoinHistoryImpl({required this.date, required this.price});

  @override
  final DateTime date;
  @override
  final num price;

  @override
  String toString() {
    return 'CoinHistory(date: $date, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinHistoryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinHistoryImplCopyWith<_$CoinHistoryImpl> get copyWith =>
      __$$CoinHistoryImplCopyWithImpl<_$CoinHistoryImpl>(this, _$identity);
}

abstract class _CoinHistory implements CoinHistory {
  const factory _CoinHistory(
      {required final DateTime date,
      required final num price}) = _$CoinHistoryImpl;

  @override
  DateTime get date;
  @override
  num get price;
  @override
  @JsonKey(ignore: true)
  _$$CoinHistoryImplCopyWith<_$CoinHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
