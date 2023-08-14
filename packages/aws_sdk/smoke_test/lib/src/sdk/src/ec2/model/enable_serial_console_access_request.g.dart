// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_serial_console_access_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableSerialConsoleAccessRequest
    extends EnableSerialConsoleAccessRequest {
  @override
  final bool dryRun;

  factory _$EnableSerialConsoleAccessRequest(
          [void Function(EnableSerialConsoleAccessRequestBuilder)? updates]) =>
      (new EnableSerialConsoleAccessRequestBuilder()..update(updates))._build();

  _$EnableSerialConsoleAccessRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'EnableSerialConsoleAccessRequest', 'dryRun');
  }

  @override
  EnableSerialConsoleAccessRequest rebuild(
          void Function(EnableSerialConsoleAccessRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableSerialConsoleAccessRequestBuilder toBuilder() =>
      new EnableSerialConsoleAccessRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableSerialConsoleAccessRequest && dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableSerialConsoleAccessRequestBuilder
    implements
        Builder<EnableSerialConsoleAccessRequest,
            EnableSerialConsoleAccessRequestBuilder> {
  _$EnableSerialConsoleAccessRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableSerialConsoleAccessRequestBuilder() {
    EnableSerialConsoleAccessRequest._init(this);
  }

  EnableSerialConsoleAccessRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableSerialConsoleAccessRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableSerialConsoleAccessRequest;
  }

  @override
  void update(void Function(EnableSerialConsoleAccessRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableSerialConsoleAccessRequest build() => _build();

  _$EnableSerialConsoleAccessRequest _build() {
    final _$result = _$v ??
        new _$EnableSerialConsoleAccessRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'EnableSerialConsoleAccessRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
