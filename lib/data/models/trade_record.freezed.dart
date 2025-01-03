// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeRecord _$TradeRecordFromJson(Map<String, dynamic> json) {
  return _TradeRecord.fromJson(json);
}

/// @nodoc
mixin _$TradeRecord {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
  OrderSide get side => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TradeRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeRecordCopyWith<TradeRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeRecordCopyWith<$Res> {
  factory $TradeRecordCopyWith(
          TradeRecord value, $Res Function(TradeRecord) then) =
      _$TradeRecordCopyWithImpl<$Res, TradeRecord>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      double price,
      double quantity,
      @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
      OrderSide side,
      DateTime timestamp});
}

/// @nodoc
class _$TradeRecordCopyWithImpl<$Res, $Val extends TradeRecord>
    implements $TradeRecordCopyWith<$Res> {
  _$TradeRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? price = null,
    Object? quantity = null,
    Object? side = null,
    Object? timestamp = null,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeRecordImplCopyWith<$Res>
    implements $TradeRecordCopyWith<$Res> {
  factory _$$TradeRecordImplCopyWith(
          _$TradeRecordImpl value, $Res Function(_$TradeRecordImpl) then) =
      __$$TradeRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      double price,
      double quantity,
      @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
      OrderSide side,
      DateTime timestamp});
}

/// @nodoc
class __$$TradeRecordImplCopyWithImpl<$Res>
    extends _$TradeRecordCopyWithImpl<$Res, _$TradeRecordImpl>
    implements _$$TradeRecordImplCopyWith<$Res> {
  __$$TradeRecordImplCopyWithImpl(
      _$TradeRecordImpl _value, $Res Function(_$TradeRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? price = null,
    Object? quantity = null,
    Object? side = null,
    Object? timestamp = null,
  }) {
    return _then(_$TradeRecordImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as OrderSide,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeRecordImpl extends _TradeRecord {
  const _$TradeRecordImpl(
      {required this.id,
      required this.symbol,
      required this.price,
      required this.quantity,
      @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
      required this.side,
      required this.timestamp})
      : super._();

  factory _$TradeRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeRecordImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final double price;
  @override
  final double quantity;
  @override
  @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
  final OrderSide side;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'TradeRecord(id: $id, symbol: $symbol, price: $price, quantity: $quantity, side: $side, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, price, quantity, side, timestamp);

  /// Create a copy of TradeRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeRecordImplCopyWith<_$TradeRecordImpl> get copyWith =>
      __$$TradeRecordImplCopyWithImpl<_$TradeRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeRecordImplToJson(
      this,
    );
  }
}

abstract class _TradeRecord extends TradeRecord {
  const factory _TradeRecord(
      {required final String id,
      required final String symbol,
      required final double price,
      required final double quantity,
      @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
      required final OrderSide side,
      required final DateTime timestamp}) = _$TradeRecordImpl;
  const _TradeRecord._() : super._();

  factory _TradeRecord.fromJson(Map<String, dynamic> json) =
      _$TradeRecordImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  double get price;
  @override
  double get quantity;
  @override
  @JsonKey(fromJson: _orderSideFromJson, toJson: _orderSideToJson)
  OrderSide get side;
  @override
  DateTime get timestamp;

  /// Create a copy of TradeRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeRecordImplCopyWith<_$TradeRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
