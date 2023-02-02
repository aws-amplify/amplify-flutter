// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.logging_enabled;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoggingEnabled extends LoggingEnabled {
  @override
  final String targetBucket;
  @override
  final _i3.BuiltList<_i2.TargetGrant>? targetGrants;
  @override
  final String targetPrefix;

  factory _$LoggingEnabled([void Function(LoggingEnabledBuilder)? updates]) =>
      (new LoggingEnabledBuilder()..update(updates))._build();

  _$LoggingEnabled._(
      {required this.targetBucket,
      this.targetGrants,
      required this.targetPrefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetBucket, r'LoggingEnabled', 'targetBucket');
    BuiltValueNullFieldError.checkNotNull(
        targetPrefix, r'LoggingEnabled', 'targetPrefix');
  }

  @override
  LoggingEnabled rebuild(void Function(LoggingEnabledBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoggingEnabledBuilder toBuilder() =>
      new LoggingEnabledBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoggingEnabled &&
        targetBucket == other.targetBucket &&
        targetGrants == other.targetGrants &&
        targetPrefix == other.targetPrefix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targetBucket.hashCode);
    _$hash = $jc(_$hash, targetGrants.hashCode);
    _$hash = $jc(_$hash, targetPrefix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoggingEnabledBuilder
    implements Builder<LoggingEnabled, LoggingEnabledBuilder> {
  _$LoggingEnabled? _$v;

  String? _targetBucket;
  String? get targetBucket => _$this._targetBucket;
  set targetBucket(String? targetBucket) => _$this._targetBucket = targetBucket;

  _i3.ListBuilder<_i2.TargetGrant>? _targetGrants;
  _i3.ListBuilder<_i2.TargetGrant> get targetGrants =>
      _$this._targetGrants ??= new _i3.ListBuilder<_i2.TargetGrant>();
  set targetGrants(_i3.ListBuilder<_i2.TargetGrant>? targetGrants) =>
      _$this._targetGrants = targetGrants;

  String? _targetPrefix;
  String? get targetPrefix => _$this._targetPrefix;
  set targetPrefix(String? targetPrefix) => _$this._targetPrefix = targetPrefix;

  LoggingEnabledBuilder() {
    LoggingEnabled._init(this);
  }

  LoggingEnabledBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targetBucket = $v.targetBucket;
      _targetGrants = $v.targetGrants?.toBuilder();
      _targetPrefix = $v.targetPrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoggingEnabled other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoggingEnabled;
  }

  @override
  void update(void Function(LoggingEnabledBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoggingEnabled build() => _build();

  _$LoggingEnabled _build() {
    _$LoggingEnabled _$result;
    try {
      _$result = _$v ??
          new _$LoggingEnabled._(
              targetBucket: BuiltValueNullFieldError.checkNotNull(
                  targetBucket, r'LoggingEnabled', 'targetBucket'),
              targetGrants: _targetGrants?.build(),
              targetPrefix: BuiltValueNullFieldError.checkNotNull(
                  targetPrefix, r'LoggingEnabled', 'targetPrefix'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targetGrants';
        _targetGrants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoggingEnabled', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
