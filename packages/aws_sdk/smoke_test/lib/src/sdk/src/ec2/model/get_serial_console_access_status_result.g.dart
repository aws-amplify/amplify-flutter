// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_serial_console_access_status_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSerialConsoleAccessStatusResult
    extends GetSerialConsoleAccessStatusResult {
  @override
  final bool serialConsoleAccessEnabled;

  factory _$GetSerialConsoleAccessStatusResult(
          [void Function(GetSerialConsoleAccessStatusResultBuilder)?
              updates]) =>
      (new GetSerialConsoleAccessStatusResultBuilder()..update(updates))
          ._build();

  _$GetSerialConsoleAccessStatusResult._(
      {required this.serialConsoleAccessEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serialConsoleAccessEnabled,
        r'GetSerialConsoleAccessStatusResult', 'serialConsoleAccessEnabled');
  }

  @override
  GetSerialConsoleAccessStatusResult rebuild(
          void Function(GetSerialConsoleAccessStatusResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSerialConsoleAccessStatusResultBuilder toBuilder() =>
      new GetSerialConsoleAccessStatusResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSerialConsoleAccessStatusResult &&
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

class GetSerialConsoleAccessStatusResultBuilder
    implements
        Builder<GetSerialConsoleAccessStatusResult,
            GetSerialConsoleAccessStatusResultBuilder> {
  _$GetSerialConsoleAccessStatusResult? _$v;

  bool? _serialConsoleAccessEnabled;
  bool? get serialConsoleAccessEnabled => _$this._serialConsoleAccessEnabled;
  set serialConsoleAccessEnabled(bool? serialConsoleAccessEnabled) =>
      _$this._serialConsoleAccessEnabled = serialConsoleAccessEnabled;

  GetSerialConsoleAccessStatusResultBuilder() {
    GetSerialConsoleAccessStatusResult._init(this);
  }

  GetSerialConsoleAccessStatusResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serialConsoleAccessEnabled = $v.serialConsoleAccessEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSerialConsoleAccessStatusResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSerialConsoleAccessStatusResult;
  }

  @override
  void update(
      void Function(GetSerialConsoleAccessStatusResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSerialConsoleAccessStatusResult build() => _build();

  _$GetSerialConsoleAccessStatusResult _build() {
    final _$result = _$v ??
        new _$GetSerialConsoleAccessStatusResult._(
            serialConsoleAccessEnabled: BuiltValueNullFieldError.checkNotNull(
                serialConsoleAccessEnabled,
                r'GetSerialConsoleAccessStatusResult',
                'serialConsoleAccessEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
