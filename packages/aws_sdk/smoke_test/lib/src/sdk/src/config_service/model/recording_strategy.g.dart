// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recording_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordingStrategy extends RecordingStrategy {
  @override
  final _i2.RecordingStrategyType? useOnly;

  factory _$RecordingStrategy(
          [void Function(RecordingStrategyBuilder)? updates]) =>
      (new RecordingStrategyBuilder()..update(updates))._build();

  _$RecordingStrategy._({this.useOnly}) : super._();

  @override
  RecordingStrategy rebuild(void Function(RecordingStrategyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecordingStrategyBuilder toBuilder() =>
      new RecordingStrategyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordingStrategy && useOnly == other.useOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecordingStrategyBuilder
    implements Builder<RecordingStrategy, RecordingStrategyBuilder> {
  _$RecordingStrategy? _$v;

  _i2.RecordingStrategyType? _useOnly;
  _i2.RecordingStrategyType? get useOnly => _$this._useOnly;
  set useOnly(_i2.RecordingStrategyType? useOnly) => _$this._useOnly = useOnly;

  RecordingStrategyBuilder() {
    RecordingStrategy._init(this);
  }

  RecordingStrategyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useOnly = $v.useOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordingStrategy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecordingStrategy;
  }

  @override
  void update(void Function(RecordingStrategyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordingStrategy build() => _build();

  _$RecordingStrategy _build() {
    final _$result = _$v ?? new _$RecordingStrategy._(useOnly: useOnly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
