// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strategy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Strategy _$StrategyFromJson(Map<String, dynamic> json) {
  return _Strategy.fromJson(json);
}

/// @nodoc
mixin _$Strategy {
  /// Unique identifier
  String get id => throw _privateConstructorUsedError;

  /// Strategy name
  String get name => throw _privateConstructorUsedError;

  /// Strategy description
  String get description => throw _privateConstructorUsedError;

  /// Whether the strategy is active
  bool get isActive => throw _privateConstructorUsedError;

  /// Strategy parameters
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;

  /// Strategy creation timestamp
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Strategy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Strategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrategyCopyWith<Strategy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrategyCopyWith<$Res> {
  factory $StrategyCopyWith(Strategy value, $Res Function(Strategy) then) =
      _$StrategyCopyWithImpl<$Res, Strategy>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      bool isActive,
      Map<String, dynamic> parameters,
      DateTime createdAt});
}

/// @nodoc
class _$StrategyCopyWithImpl<$Res, $Val extends Strategy>
    implements $StrategyCopyWith<$Res> {
  _$StrategyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Strategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? parameters = null,
    Object? createdAt = null,
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrategyImplCopyWith<$Res>
    implements $StrategyCopyWith<$Res> {
  factory _$$StrategyImplCopyWith(
          _$StrategyImpl value, $Res Function(_$StrategyImpl) then) =
      __$$StrategyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      bool isActive,
      Map<String, dynamic> parameters,
      DateTime createdAt});
}

/// @nodoc
class __$$StrategyImplCopyWithImpl<$Res>
    extends _$StrategyCopyWithImpl<$Res, _$StrategyImpl>
    implements _$$StrategyImplCopyWith<$Res> {
  __$$StrategyImplCopyWithImpl(
      _$StrategyImpl _value, $Res Function(_$StrategyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Strategy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? parameters = null,
    Object? createdAt = null,
  }) {
    return _then(_$StrategyImpl(
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrategyImpl extends _Strategy {
  const _$StrategyImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.isActive = false,
      required final Map<String, dynamic> parameters,
      required this.createdAt})
      : _parameters = parameters,
        super._();

  factory _$StrategyImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrategyImplFromJson(json);

  /// Unique identifier
  @override
  final String id;

  /// Strategy name
  @override
  final String name;

  /// Strategy description
  @override
  final String description;

  /// Whether the strategy is active
  @override
  @JsonKey()
  final bool isActive;

  /// Strategy parameters
  final Map<String, dynamic> _parameters;

  /// Strategy parameters
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  /// Strategy creation timestamp
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Strategy(id: $id, name: $name, description: $description, isActive: $isActive, parameters: $parameters, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrategyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, isActive,
      const DeepCollectionEquality().hash(_parameters), createdAt);

  /// Create a copy of Strategy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrategyImplCopyWith<_$StrategyImpl> get copyWith =>
      __$$StrategyImplCopyWithImpl<_$StrategyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrategyImplToJson(
      this,
    );
  }
}

abstract class _Strategy extends Strategy {
  const factory _Strategy(
      {required final String id,
      required final String name,
      required final String description,
      final bool isActive,
      required final Map<String, dynamic> parameters,
      required final DateTime createdAt}) = _$StrategyImpl;
  const _Strategy._() : super._();

  factory _Strategy.fromJson(Map<String, dynamic> json) =
      _$StrategyImpl.fromJson;

  /// Unique identifier
  @override
  String get id;

  /// Strategy name
  @override
  String get name;

  /// Strategy description
  @override
  String get description;

  /// Whether the strategy is active
  @override
  bool get isActive;

  /// Strategy parameters
  @override
  Map<String, dynamic> get parameters;

  /// Strategy creation timestamp
  @override
  DateTime get createdAt;

  /// Create a copy of Strategy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrategyImplCopyWith<_$StrategyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
