// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_serial_console_access_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableSerialConsoleAccessResult
    extends DisableSerialConsoleAccessResult {
  @override
  final bool serialConsoleAccessEnabled;

  factory _$DisableSerialConsoleAccessResult(
          [void Function(DisableSerialConsoleAccessResultBuilder)? updates]) =>
      (new DisableSerialConsoleAccessResultBuilder()..update(updates))._build();

  _$DisableSerialConsoleAccessResult._(
      {required this.serialConsoleAccessEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serialConsoleAccessEnabled,
        r'DisableSerialConsoleAccessResult', 'serialConsoleAccessEnabled');
  }

  @override
  DisableSerialConsoleAccessResult rebuild(
          void Function(DisableSerialConsoleAccessResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableSerialConsoleAccessResultBuilder toBuilder() =>
      new DisableSerialConsoleAccessResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableSerialConsoleAccessResult &&
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

class DisableSerialConsoleAccessResultBuilder
    implements
        Builder<DisableSerialConsoleAccessResult,
            DisableSerialConsoleAccessResultBuilder> {
  _$DisableSerialConsoleAccessResult? _$v;

  bool? _serialConsoleAccessEnabled;
  bool? get serialConsoleAccessEnabled => _$this._serialConsoleAccessEnabled;
  set serialConsoleAccessEnabled(bool? serialConsoleAccessEnabled) =>
      _$this._serialConsoleAccessEnabled = serialConsoleAccessEnabled;

  DisableSerialConsoleAccessResultBuilder() {
    DisableSerialConsoleAccessResult._init(this);
  }

  DisableSerialConsoleAccessResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialConsoleAccessEnabled = $v.serialConsoleAccessEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableSerialConsoleAccessResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableSerialConsoleAccessResult;
  }

  @override
  void update(void Function(DisableSerialConsoleAccessResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableSerialConsoleAccessResult build() => _build();

  _$DisableSerialConsoleAccessResult _build() {
    final _$result = _$v ??
        new _$DisableSerialConsoleAccessResult._(
            serialConsoleAccessEnabled: BuiltValueNullFieldError.checkNotNull(
                serialConsoleAccessEnabled,
                r'DisableSerialConsoleAccessResult',
                'serialConsoleAccessEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
