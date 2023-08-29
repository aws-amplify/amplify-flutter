// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_serial_console_access_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableSerialConsoleAccessResult
    extends EnableSerialConsoleAccessResult {
  @override
  final bool serialConsoleAccessEnabled;

  factory _$EnableSerialConsoleAccessResult(
          [void Function(EnableSerialConsoleAccessResultBuilder)? updates]) =>
      (new EnableSerialConsoleAccessResultBuilder()..update(updates))._build();

  _$EnableSerialConsoleAccessResult._(
      {required this.serialConsoleAccessEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serialConsoleAccessEnabled,
        r'EnableSerialConsoleAccessResult', 'serialConsoleAccessEnabled');
  }

  @override
  EnableSerialConsoleAccessResult rebuild(
          void Function(EnableSerialConsoleAccessResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableSerialConsoleAccessResultBuilder toBuilder() =>
      new EnableSerialConsoleAccessResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableSerialConsoleAccessResult &&
        serialConsoleAccessEnabled == other.serialConsoleAccessEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serialConsoleAccessEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableSerialConsoleAccessResultBuilder
    implements
        Builder<EnableSerialConsoleAccessResult,
            EnableSerialConsoleAccessResultBuilder> {
  _$EnableSerialConsoleAccessResult? _$v;

  bool? _serialConsoleAccessEnabled;
  bool? get serialConsoleAccessEnabled => _$this._serialConsoleAccessEnabled;
  set serialConsoleAccessEnabled(bool? serialConsoleAccessEnabled) =>
      _$this._serialConsoleAccessEnabled = serialConsoleAccessEnabled;

  EnableSerialConsoleAccessResultBuilder() {
    EnableSerialConsoleAccessResult._init(this);
  }

  EnableSerialConsoleAccessResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialConsoleAccessEnabled = $v.serialConsoleAccessEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableSerialConsoleAccessResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableSerialConsoleAccessResult;
  }

  @override
  void update(void Function(EnableSerialConsoleAccessResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableSerialConsoleAccessResult build() => _build();

  _$EnableSerialConsoleAccessResult _build() {
    final _$result = _$v ??
        new _$EnableSerialConsoleAccessResult._(
            serialConsoleAccessEnabled: BuiltValueNullFieldError.checkNotNull(
                serialConsoleAccessEnabled,
                r'EnableSerialConsoleAccessResult',
                'serialConsoleAccessEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
