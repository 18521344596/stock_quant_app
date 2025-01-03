// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy_performance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StrategyPerformance _$StrategyPerformanceFromJson(Map<String, dynamic> json) {
  return _StrategyPerformance.fromJson(json);
}

/// @nodoc
mixin _$StrategyPerformance {
  String get strategyId => throw _privateConstructorUsedError;
  double get totalReturn => throw _privateConstructorUsedError;
  double get annualizedReturn => throw _privateConstructorUsedError;
  double get maxDrawdown => throw _privateConstructorUsedError;
  double get sharpeRatio => throw _privateConstructorUsedError;
  int get totalTrades => throw _privateConstructorUsedError;
  double get winRate => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  Map<String, double>? get monthlyReturns => throw _privateConstructorUsedError;

  /// Serializes this StrategyPerformance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StrategyPerformance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyPerformanceCopyWith<StrategyPerformance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyPerformanceCopyWith<$Res> {
  factory $StrategyPerformanceCopyWith(
          StrategyPerformance value, $Res Function(StrategyPerformance) then) =
      _$StrategyPerformanceCopyWithImpl<$Res, StrategyPerformance>;
  @useResult
  $Res call(
      {String strategyId,
      double totalReturn,
      double annualizedReturn,
      double maxDrawdown,
      double sharpeRatio,
      int totalTrades,
      double winRate,
      DateTime startDate,
      DateTime lastUpdated,
      Map<String, double>? monthlyReturns});
}

/// @nodoc
class _$StrategyPerformanceCopyWithImpl<$Res, $Val extends StrategyPerformance>
    implements $StrategyPerformanceCopyWith<$Res> {
  _$StrategyPerformanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StrategyPerformance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategyId = null,
    Object? totalReturn = null,
    Object? annualizedReturn = null,
    Object? maxDrawdown = null,
    Object? sharpeRatio = null,
    Object? totalTrades = null,
    Object? winRate = null,
    Object? startDate = null,
    Object? lastUpdated = null,
    Object? monthlyReturns = freezed,
  }) {
    return _then(_value.copyWith(
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      annualizedReturn: null == annualizedReturn
          ? _value.annualizedReturn
          : annualizedReturn // ignore: cast_nullable_to_non_nullable
              as double,
      maxDrawdown: null == maxDrawdown
          ? _value.maxDrawdown
          : maxDrawdown // ignore: cast_nullable_to_non_nullable
              as double,
      sharpeRatio: null == sharpeRatio
          ? _value.sharpeRatio
          : sharpeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      winRate: null == winRate
          ? _value.winRate
          : winRate // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyReturns: freezed == monthlyReturns
          ? _value.monthlyReturns
          : monthlyReturns // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyPerformanceImplCopyWith<$Res>
    implements $StrategyPerformanceCopyWith<$Res> {
  factory _$$StrategyPerformanceImplCopyWith(_$StrategyPerformanceImpl value,
          $Res Function(_$StrategyPerformanceImpl) then) =
      __$$StrategyPerformanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String strategyId,
      double totalReturn,
      double annualizedReturn,
      double maxDrawdown,
      double sharpeRatio,
      int totalTrades,
      double winRate,
      DateTime startDate,
      DateTime lastUpdated,
      Map<String, double>? monthlyReturns});
}

/// @nodoc
class __$$StrategyPerformanceImplCopyWithImpl<$Res>
    extends _$StrategyPerformanceCopyWithImpl<$Res, _$StrategyPerformanceImpl>
    implements _$$StrategyPerformanceImplCopyWith<$Res> {
  __$$StrategyPerformanceImplCopyWithImpl(_$StrategyPerformanceImpl _value,
      $Res Function(_$StrategyPerformanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of StrategyPerformance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? strategyId = null,
    Object? totalReturn = null,
    Object? annualizedReturn = null,
    Object? maxDrawdown = null,
    Object? sharpeRatio = null,
    Object? totalTrades = null,
    Object? winRate = null,
    Object? startDate = null,
    Object? lastUpdated = null,
    Object? monthlyReturns = freezed,
  }) {
    return _then(_$StrategyPerformanceImpl(
      strategyId: null == strategyId
          ? _value.strategyId
          : strategyId // ignore: cast_nullable_to_non_nullable
              as String,
      totalReturn: null == totalReturn
          ? _value.totalReturn
          : totalReturn // ignore: cast_nullable_to_non_nullable
              as double,
      annualizedReturn: null == annualizedReturn
          ? _value.annualizedReturn
          : annualizedReturn // ignore: cast_nullable_to_non_nullable
              as double,
      maxDrawdown: null == maxDrawdown
          ? _value.maxDrawdown
          : maxDrawdown // ignore: cast_nullable_to_non_nullable
              as double,
      sharpeRatio: null == sharpeRatio
          ? _value.sharpeRatio
          : sharpeRatio // ignore: cast_nullable_to_non_nullable
              as double,
      totalTrades: null == totalTrades
          ? _value.totalTrades
          : totalTrades // ignore: cast_nullable_to_non_nullable
              as int,
      winRate: null == winRate
          ? _value.winRate
          : winRate // ignore: cast_nullable_to_non_nullable
              as double,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      monthlyReturns: freezed == monthlyReturns
          ? _value._monthlyReturns
          : monthlyReturns // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyPerformanceImpl extends _StrategyPerformance {
  const _$StrategyPerformanceImpl(
      {required this.strategyId,
      required this.totalReturn,
      required this.annualizedReturn,
      required this.maxDrawdown,
      required this.sharpeRatio,
      required this.totalTrades,
      required this.winRate,
      required this.startDate,
      required this.lastUpdated,
      final Map<String, double>? monthlyReturns})
      : _monthlyReturns = monthlyReturns,
        super._();

  factory _$StrategyPerformanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyPerformanceImplFromJson(json);

  @override
  final String strategyId;
  @override
  final double totalReturn;
  @override
  final double annualizedReturn;
  @override
  final double maxDrawdown;
  @override
  final double sharpeRatio;
  @override
  final int totalTrades;
  @override
  final double winRate;
  @override
  final DateTime startDate;
  @override
  final DateTime lastUpdated;
  final Map<String, double>? _monthlyReturns;
  @override
  Map<String, double>? get monthlyReturns {
    final value = _monthlyReturns;
    if (value == null) return null;
    if (_monthlyReturns is EqualUnmodifiableMapView) return _monthlyReturns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'StrategyPerformance(strategyId: $strategyId, totalReturn: $totalReturn, annualizedReturn: $annualizedReturn, maxDrawdown: $maxDrawdown, sharpeRatio: $sharpeRatio, totalTrades: $totalTrades, winRate: $winRate, startDate: $startDate, lastUpdated: $lastUpdated, monthlyReturns: $monthlyReturns)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyPerformanceImpl &&
            (identical(other.strategyId, strategyId) ||
                other.strategyId == strategyId) &&
            (identical(other.totalReturn, totalReturn) ||
                other.totalReturn == totalReturn) &&
            (identical(other.annualizedReturn, annualizedReturn) ||
                other.annualizedReturn == annualizedReturn) &&
            (identical(other.maxDrawdown, maxDrawdown) ||
                other.maxDrawdown == maxDrawdown) &&
            (identical(other.sharpeRatio, sharpeRatio) ||
                other.sharpeRatio == sharpeRatio) &&
            (identical(other.totalTrades, totalTrades) ||
                other.totalTrades == totalTrades) &&
            (identical(other.winRate, winRate) || other.winRate == winRate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            const DeepCollectionEquality()
                .equals(other._monthlyReturns, _monthlyReturns));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      strategyId,
      totalReturn,
      annualizedReturn,
      maxDrawdown,
      sharpeRatio,
      totalTrades,
      winRate,
      startDate,
      lastUpdated,
      const DeepCollectionEquality().hash(_monthlyReturns));

  /// Create a copy of StrategyPerformance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyPerformanceImplCopyWith<_$StrategyPerformanceImpl> get copyWith =>
      __$$StrategyPerformanceImplCopyWithImpl<_$StrategyPerformanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyPerformanceImplToJson(
      this,
    );
  }
}

abstract class _StrategyPerformance extends StrategyPerformance {
  const factory _StrategyPerformance(
      {required final String strategyId,
      required final double totalReturn,
      required final double annualizedReturn,
      required final double maxDrawdown,
      required final double sharpeRatio,
      required final int totalTrades,
      required final double winRate,
      required final DateTime startDate,
      required final DateTime lastUpdated,
      final Map<String, double>? monthlyReturns}) = _$StrategyPerformanceImpl;
  const _StrategyPerformance._() : super._();

  factory _StrategyPerformance.fromJson(Map<String, dynamic> json) =
      _$StrategyPerformanceImpl.fromJson;

  @override
  String get strategyId;
  @override
  double get totalReturn;
  @override
  double get annualizedReturn;
  @override
  double get maxDrawdown;
  @override
  double get sharpeRatio;
  @override
  int get totalTrades;
  @override
  double get winRate;
  @override
  DateTime get startDate;
  @override
  DateTime get lastUpdated;
  @override
  Map<String, double>? get monthlyReturns;

  /// Create a copy of StrategyPerformance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyPerformanceImplCopyWith<_$StrategyPerformanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
