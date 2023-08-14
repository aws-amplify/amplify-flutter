// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_serial_console_access_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableSerialConsoleAccessRequest
    extends DisableSerialConsoleAccessRequest {
  @override
  final bool dryRun;

  factory _$DisableSerialConsoleAccessRequest(
          [void Function(DisableSerialConsoleAccessRequestBuilder)? updates]) =>
      (new DisableSerialConsoleAccessRequestBuilder()..update(updates))
          ._build();

  _$DisableSerialConsoleAccessRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableSerialConsoleAccessRequest', 'dryRun');
  }

  @override
  DisableSerialConsoleAccessRequest rebuild(
          void Function(DisableSerialConsoleAccessRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableSerialConsoleAccessRequestBuilder toBuilder() =>
      new DisableSerialConsoleAccessRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableSerialConsoleAccessRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableSerialConsoleAccessRequestBuilder
    implements
        Builder<DisableSerialConsoleAccessRequest,
            DisableSerialConsoleAccessRequestBuilder> {
  _$DisableSerialConsoleAccessRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisableSerialConsoleAccessRequestBuilder() {
    DisableSerialConsoleAccessRequest._init(this);
  }

  DisableSerialConsoleAccessRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableSerialConsoleAccessRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableSerialConsoleAccessRequest;
  }

  @override
  void update(
      void Function(DisableSerialConsoleAccessRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableSerialConsoleAccessRequest build() => _build();

  _$DisableSerialConsoleAccessRequest _build() {
    final _$result = _$v ??
        new _$DisableSerialConsoleAccessRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableSerialConsoleAccessRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
