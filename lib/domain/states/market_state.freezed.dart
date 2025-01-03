// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<StockEntity> stocks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<StockEntity> stocks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<StockEntity> stocks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketError value) error,
    required TResult Function(MarketLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarketLoading value)? loading,
    TResult? Function(MarketError value)? error,
    TResult? Function(MarketLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketError value)? error,
    TResult Function(MarketLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketStateCopyWith<$Res> {
  factory $MarketStateCopyWith(
          MarketState value, $Res Function(MarketState) then) =
      _$MarketStateCopyWithImpl<$Res, MarketState>;
}

/// @nodoc
class _$MarketStateCopyWithImpl<$Res, $Val extends MarketState>
    implements $MarketStateCopyWith<$Res> {
  _$MarketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MarketLoadingImplCopyWith<$Res> {
  factory _$$MarketLoadingImplCopyWith(
          _$MarketLoadingImpl value, $Res Function(_$MarketLoadingImpl) then) =
      __$$MarketLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarketLoadingImplCopyWithImpl<$Res>
    extends _$MarketStateCopyWithImpl<$Res, _$MarketLoadingImpl>
    implements _$$MarketLoadingImplCopyWith<$Res> {
  __$$MarketLoadingImplCopyWithImpl(
      _$MarketLoadingImpl _value, $Res Function(_$MarketLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarketLoadingImpl implements MarketLoading {
  const _$MarketLoadingImpl();

  @override
  String toString() {
    return 'MarketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarketLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<StockEntity> stocks) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<StockEntity> stocks)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<StockEntity> stocks)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketError value) error,
    required TResult Function(MarketLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarketLoading value)? loading,
    TResult? Function(MarketError value)? error,
    TResult? Function(MarketLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketError value)? error,
    TResult Function(MarketLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MarketLoading implements MarketState {
  const factory MarketLoading() = _$MarketLoadingImpl;
}

/// @nodoc
abstract class _$$MarketErrorImplCopyWith<$Res> {
  factory _$$MarketErrorImplCopyWith(
          _$MarketErrorImpl value, $Res Function(_$MarketErrorImpl) then) =
      __$$MarketErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MarketErrorImplCopyWithImpl<$Res>
    extends _$MarketStateCopyWithImpl<$Res, _$MarketErrorImpl>
    implements _$$MarketErrorImplCopyWith<$Res> {
  __$$MarketErrorImplCopyWithImpl(
      _$MarketErrorImpl _value, $Res Function(_$MarketErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MarketErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarketErrorImpl implements MarketError {
  const _$MarketErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MarketState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketErrorImplCopyWith<_$MarketErrorImpl> get copyWith =>
      __$$MarketErrorImplCopyWithImpl<_$MarketErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<StockEntity> stocks) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<StockEntity> stocks)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<StockEntity> stocks)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketError value) error,
    required TResult Function(MarketLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarketLoading value)? loading,
    TResult? Function(MarketError value)? error,
    TResult? Function(MarketLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketError value)? error,
    TResult Function(MarketLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MarketError implements MarketState {
  const factory MarketError(final String message) = _$MarketErrorImpl;

  String get message;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketErrorImplCopyWith<_$MarketErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarketLoadedImplCopyWith<$Res> {
  factory _$$MarketLoadedImplCopyWith(
          _$MarketLoadedImpl value, $Res Function(_$MarketLoadedImpl) then) =
      __$$MarketLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StockEntity> stocks});
}

/// @nodoc
class __$$MarketLoadedImplCopyWithImpl<$Res>
    extends _$MarketStateCopyWithImpl<$Res, _$MarketLoadedImpl>
    implements _$$MarketLoadedImplCopyWith<$Res> {
  __$$MarketLoadedImplCopyWithImpl(
      _$MarketLoadedImpl _value, $Res Function(_$MarketLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$MarketLoadedImpl(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<StockEntity>,
    ));
  }
}

/// @nodoc

class _$MarketLoadedImpl implements MarketLoaded {
  const _$MarketLoadedImpl({required final List<StockEntity> stocks})
      : _stocks = stocks;

  final List<StockEntity> _stocks;
  @override
  List<StockEntity> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'MarketState.loaded(stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketLoadedImpl &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketLoadedImplCopyWith<_$MarketLoadedImpl> get copyWith =>
      __$$MarketLoadedImplCopyWithImpl<_$MarketLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<StockEntity> stocks) loaded,
  }) {
    return loaded(stocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<StockEntity> stocks)? loaded,
  }) {
    return loaded?.call(stocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<StockEntity> stocks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MarketLoading value) loading,
    required TResult Function(MarketError value) error,
    required TResult Function(MarketLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarketLoading value)? loading,
    TResult? Function(MarketError value)? error,
    TResult? Function(MarketLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarketLoading value)? loading,
    TResult Function(MarketError value)? error,
    TResult Function(MarketLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MarketLoaded implements MarketState {
  const factory MarketLoaded({required final List<StockEntity> stocks}) =
      _$MarketLoadedImpl;

  List<StockEntity> get stocks;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketLoadedImplCopyWith<_$MarketLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
