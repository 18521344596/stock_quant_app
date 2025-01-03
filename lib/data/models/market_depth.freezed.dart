// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_depth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceLevel _$PriceLevelFromJson(Map<String, dynamic> json) {
  return _PriceLevel.fromJson(json);
}

/// @nodoc
mixin _$PriceLevel {
  double get price => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;

  /// Serializes this PriceLevel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceLevelCopyWith<PriceLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceLevelCopyWith<$Res> {
  factory $PriceLevelCopyWith(
          PriceLevel value, $Res Function(PriceLevel) then) =
      _$PriceLevelCopyWithImpl<$Res, PriceLevel>;
  @useResult
  $Res call({double price, double quantity});
}

/// @nodoc
class _$PriceLevelCopyWithImpl<$Res, $Val extends PriceLevel>
    implements $PriceLevelCopyWith<$Res> {
  _$PriceLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceLevelImplCopyWith<$Res>
    implements $PriceLevelCopyWith<$Res> {
  factory _$$PriceLevelImplCopyWith(
          _$PriceLevelImpl value, $Res Function(_$PriceLevelImpl) then) =
      __$$PriceLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, double quantity});
}

/// @nodoc
class __$$PriceLevelImplCopyWithImpl<$Res>
    extends _$PriceLevelCopyWithImpl<$Res, _$PriceLevelImpl>
    implements _$$PriceLevelImplCopyWith<$Res> {
  __$$PriceLevelImplCopyWithImpl(
      _$PriceLevelImpl _value, $Res Function(_$PriceLevelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceLevel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$PriceLevelImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceLevelImpl extends _PriceLevel {
  const _$PriceLevelImpl({required this.price, required this.quantity})
      : super._();

  factory _$PriceLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceLevelImplFromJson(json);

  @override
  final double price;
  @override
  final double quantity;

  @override
  String toString() {
    return 'PriceLevel(price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceLevelImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, quantity);

  /// Create a copy of PriceLevel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceLevelImplCopyWith<_$PriceLevelImpl> get copyWith =>
      __$$PriceLevelImplCopyWithImpl<_$PriceLevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceLevelImplToJson(
      this,
    );
  }
}

abstract class _PriceLevel extends PriceLevel {
  const factory _PriceLevel(
      {required final double price,
      required final double quantity}) = _$PriceLevelImpl;
  const _PriceLevel._() : super._();

  factory _PriceLevel.fromJson(Map<String, dynamic> json) =
      _$PriceLevelImpl.fromJson;

  @override
  double get price;
  @override
  double get quantity;

  /// Create a copy of PriceLevel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceLevelImplCopyWith<_$PriceLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketDepth _$MarketDepthFromJson(Map<String, dynamic> json) {
  return _MarketDepth.fromJson(json);
}

/// @nodoc
mixin _$MarketDepth {
  String get symbol => throw _privateConstructorUsedError;
  List<PriceLevel> get bids => throw _privateConstructorUsedError;
  List<PriceLevel> get asks => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MarketDepth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketDepth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketDepthCopyWith<MarketDepth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDepthCopyWith<$Res> {
  factory $MarketDepthCopyWith(
          MarketDepth value, $Res Function(MarketDepth) then) =
      _$MarketDepthCopyWithImpl<$Res, MarketDepth>;
  @useResult
  $Res call(
      {String symbol,
      List<PriceLevel> bids,
      List<PriceLevel> asks,
      DateTime timestamp});
}

/// @nodoc
class _$MarketDepthCopyWithImpl<$Res, $Val extends MarketDepth>
    implements $MarketDepthCopyWith<$Res> {
  _$MarketDepthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketDepth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? bids = null,
    Object? asks = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<PriceLevel>,
      asks: null == asks
          ? _value.asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<PriceLevel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketDepthImplCopyWith<$Res>
    implements $MarketDepthCopyWith<$Res> {
  factory _$$MarketDepthImplCopyWith(
          _$MarketDepthImpl value, $Res Function(_$MarketDepthImpl) then) =
      __$$MarketDepthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      List<PriceLevel> bids,
      List<PriceLevel> asks,
      DateTime timestamp});
}

/// @nodoc
class __$$MarketDepthImplCopyWithImpl<$Res>
    extends _$MarketDepthCopyWithImpl<$Res, _$MarketDepthImpl>
    implements _$$MarketDepthImplCopyWith<$Res> {
  __$$MarketDepthImplCopyWithImpl(
      _$MarketDepthImpl _value, $Res Function(_$MarketDepthImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketDepth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? bids = null,
    Object? asks = null,
    Object? timestamp = null,
  }) {
    return _then(_$MarketDepthImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      bids: null == bids
          ? _value._bids
          : bids // ignore: cast_nullable_to_non_nullable
              as List<PriceLevel>,
      asks: null == asks
          ? _value._asks
          : asks // ignore: cast_nullable_to_non_nullable
              as List<PriceLevel>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketDepthImpl extends _MarketDepth {
  const _$MarketDepthImpl(
      {required this.symbol,
      required final List<PriceLevel> bids,
      required final List<PriceLevel> asks,
      required this.timestamp})
      : _bids = bids,
        _asks = asks,
        super._();

  factory _$MarketDepthImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketDepthImplFromJson(json);

  @override
  final String symbol;
  final List<PriceLevel> _bids;
  @override
  List<PriceLevel> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  final List<PriceLevel> _asks;
  @override
  List<PriceLevel> get asks {
    if (_asks is EqualUnmodifiableListView) return _asks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_asks);
  }

  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'MarketDepth(symbol: $symbol, bids: $bids, asks: $asks, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketDepthImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            const DeepCollectionEquality().equals(other._bids, _bids) &&
            const DeepCollectionEquality().equals(other._asks, _asks) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      const DeepCollectionEquality().hash(_bids),
      const DeepCollectionEquality().hash(_asks),
      timestamp);

  /// Create a copy of MarketDepth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketDepthImplCopyWith<_$MarketDepthImpl> get copyWith =>
      __$$MarketDepthImplCopyWithImpl<_$MarketDepthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketDepthImplToJson(
      this,
    );
  }
}

abstract class _MarketDepth extends MarketDepth {
  const factory _MarketDepth(
      {required final String symbol,
      required final List<PriceLevel> bids,
      required final List<PriceLevel> asks,
      required final DateTime timestamp}) = _$MarketDepthImpl;
  const _MarketDepth._() : super._();

  factory _MarketDepth.fromJson(Map<String, dynamic> json) =
      _$MarketDepthImpl.fromJson;

  @override
  String get symbol;
  @override
  List<PriceLevel> get bids;
  @override
  List<PriceLevel> get asks;
  @override
  DateTime get timestamp;

  /// Create a copy of MarketDepth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketDepthImplCopyWith<_$MarketDepthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
