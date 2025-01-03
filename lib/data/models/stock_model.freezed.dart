// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
mixin _$StockModel {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get priceChange => throw _privateConstructorUsedError;
  double get priceChangePercentage => throw _privateConstructorUsedError;
  double get ytdChangePercentage => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;

  /// Serializes this StockModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockModelCopyWith<StockModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(
          StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res, StockModel>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      double currentPrice,
      double priceChange,
      double priceChangePercentage,
      double ytdChangePercentage,
      double volume,
      DateTime lastUpdate});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res, $Val extends StockModel>
    implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? currentPrice = null,
    Object? priceChange = null,
    Object? priceChangePercentage = null,
    Object? ytdChangePercentage = null,
    Object? volume = null,
    Object? lastUpdate = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage: null == priceChangePercentage
          ? _value.priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      ytdChangePercentage: null == ytdChangePercentage
          ? _value.ytdChangePercentage
          : ytdChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockModelImplCopyWith<$Res>
    implements $StockModelCopyWith<$Res> {
  factory _$$StockModelImplCopyWith(
          _$StockModelImpl value, $Res Function(_$StockModelImpl) then) =
      __$$StockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      double currentPrice,
      double priceChange,
      double priceChangePercentage,
      double ytdChangePercentage,
      double volume,
      DateTime lastUpdate});
}

/// @nodoc
class __$$StockModelImplCopyWithImpl<$Res>
    extends _$StockModelCopyWithImpl<$Res, _$StockModelImpl>
    implements _$$StockModelImplCopyWith<$Res> {
  __$$StockModelImplCopyWithImpl(
      _$StockModelImpl _value, $Res Function(_$StockModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? currentPrice = null,
    Object? priceChange = null,
    Object? priceChangePercentage = null,
    Object? ytdChangePercentage = null,
    Object? volume = null,
    Object? lastUpdate = null,
  }) {
    return _then(_$StockModelImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage: null == priceChangePercentage
          ? _value.priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      ytdChangePercentage: null == ytdChangePercentage
          ? _value.ytdChangePercentage
          : ytdChangePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockModelImpl extends _StockModel {
  const _$StockModelImpl(
      {required this.symbol,
      required this.name,
      required this.currentPrice,
      required this.priceChange,
      required this.priceChangePercentage,
      required this.ytdChangePercentage,
      required this.volume,
      required this.lastUpdate})
      : super._();

  factory _$StockModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockModelImplFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  final double currentPrice;
  @override
  final double priceChange;
  @override
  final double priceChangePercentage;
  @override
  final double ytdChangePercentage;
  @override
  final double volume;
  @override
  final DateTime lastUpdate;

  @override
  String toString() {
    return 'StockModel(symbol: $symbol, name: $name, currentPrice: $currentPrice, priceChange: $priceChange, priceChangePercentage: $priceChangePercentage, ytdChangePercentage: $ytdChangePercentage, volume: $volume, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockModelImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.priceChangePercentage, priceChangePercentage) ||
                other.priceChangePercentage == priceChangePercentage) &&
            (identical(other.ytdChangePercentage, ytdChangePercentage) ||
                other.ytdChangePercentage == ytdChangePercentage) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      symbol,
      name,
      currentPrice,
      priceChange,
      priceChangePercentage,
      ytdChangePercentage,
      volume,
      lastUpdate);

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      __$$StockModelImplCopyWithImpl<_$StockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockModelImplToJson(
      this,
    );
  }
}

abstract class _StockModel extends StockModel {
  const factory _StockModel(
      {required final String symbol,
      required final String name,
      required final double currentPrice,
      required final double priceChange,
      required final double priceChangePercentage,
      required final double ytdChangePercentage,
      required final double volume,
      required final DateTime lastUpdate}) = _$StockModelImpl;
  const _StockModel._() : super._();

  factory _StockModel.fromJson(Map<String, dynamic> json) =
      _$StockModelImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  double get currentPrice;
  @override
  double get priceChange;
  @override
  double get priceChangePercentage;
  @override
  double get ytdChangePercentage;
  @override
  double get volume;
  @override
  DateTime get lastUpdate;

  /// Create a copy of StockModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
