// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketData _$MarketDataFromJson(Map<String, dynamic> json) {
  return _MarketData.fromJson(json);
}

/// @nodoc
mixin _$MarketData {
  String get symbol => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get priceChange => throw _privateConstructorUsedError;
  double? get priceChangePercentage => throw _privateConstructorUsedError;
  double? get ytdChangePercentage => throw _privateConstructorUsedError;
  double? get volume => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this MarketData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketDataCopyWith<MarketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDataCopyWith<$Res> {
  factory $MarketDataCopyWith(
          MarketData value, $Res Function(MarketData) then) =
      _$MarketDataCopyWithImpl<$Res, MarketData>;
  @useResult
  $Res call(
      {String symbol,
      String? name,
      double price,
      double? priceChange,
      double? priceChangePercentage,
      double? ytdChangePercentage,
      double? volume,
      DateTime timestamp});
}

/// @nodoc
class _$MarketDataCopyWithImpl<$Res, $Val extends MarketData>
    implements $MarketDataCopyWith<$Res> {
  _$MarketDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = freezed,
    Object? price = null,
    Object? priceChange = freezed,
    Object? priceChangePercentage = freezed,
    Object? ytdChangePercentage = freezed,
    Object? volume = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChangePercentage: freezed == priceChangePercentage
          ? _value.priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      ytdChangePercentage: freezed == ytdChangePercentage
          ? _value.ytdChangePercentage
          : ytdChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketDataImplCopyWith<$Res>
    implements $MarketDataCopyWith<$Res> {
  factory _$$MarketDataImplCopyWith(
          _$MarketDataImpl value, $Res Function(_$MarketDataImpl) then) =
      __$$MarketDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String? name,
      double price,
      double? priceChange,
      double? priceChangePercentage,
      double? ytdChangePercentage,
      double? volume,
      DateTime timestamp});
}

/// @nodoc
class __$$MarketDataImplCopyWithImpl<$Res>
    extends _$MarketDataCopyWithImpl<$Res, _$MarketDataImpl>
    implements _$$MarketDataImplCopyWith<$Res> {
  __$$MarketDataImplCopyWithImpl(
      _$MarketDataImpl _value, $Res Function(_$MarketDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = freezed,
    Object? price = null,
    Object? priceChange = freezed,
    Object? priceChangePercentage = freezed,
    Object? ytdChangePercentage = freezed,
    Object? volume = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$MarketDataImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChangePercentage: freezed == priceChangePercentage
          ? _value.priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      ytdChangePercentage: freezed == ytdChangePercentage
          ? _value.ytdChangePercentage
          : ytdChangePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketDataImpl implements _MarketData {
  const _$MarketDataImpl(
      {required this.symbol,
      this.name,
      required this.price,
      this.priceChange,
      this.priceChangePercentage,
      this.ytdChangePercentage,
      this.volume,
      required this.timestamp});

  factory _$MarketDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketDataImplFromJson(json);

  @override
  final String symbol;
  @override
  final String? name;
  @override
  final double price;
  @override
  final double? priceChange;
  @override
  final double? priceChangePercentage;
  @override
  final double? ytdChangePercentage;
  @override
  final double? volume;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'MarketData(symbol: $symbol, name: $name, price: $price, priceChange: $priceChange, priceChangePercentage: $priceChangePercentage, ytdChangePercentage: $ytdChangePercentage, volume: $volume, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketDataImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.priceChangePercentage, priceChangePercentage) ||
                other.priceChangePercentage == priceChangePercentage) &&
            (identical(other.ytdChangePercentage, ytdChangePercentage) ||
                other.ytdChangePercentage == ytdChangePercentage) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, symbol, name, price, priceChange,
      priceChangePercentage, ytdChangePercentage, volume, timestamp);

  /// Create a copy of MarketData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketDataImplCopyWith<_$MarketDataImpl> get copyWith =>
      __$$MarketDataImplCopyWithImpl<_$MarketDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketDataImplToJson(
      this,
    );
  }
}

abstract class _MarketData implements MarketData {
  const factory _MarketData(
      {required final String symbol,
      final String? name,
      required final double price,
      final double? priceChange,
      final double? priceChangePercentage,
      final double? ytdChangePercentage,
      final double? volume,
      required final DateTime timestamp}) = _$MarketDataImpl;

  factory _MarketData.fromJson(Map<String, dynamic> json) =
      _$MarketDataImpl.fromJson;

  @override
  String get symbol;
  @override
  String? get name;
  @override
  double get price;
  @override
  double? get priceChange;
  @override
  double? get priceChangePercentage;
  @override
  double? get ytdChangePercentage;
  @override
  double? get volume;
  @override
  DateTime get timestamp;

  /// Create a copy of MarketData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketDataImplCopyWith<_$MarketDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
