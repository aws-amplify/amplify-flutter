// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_serial_console_access_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSerialConsoleAccessStatusRequest
    extends GetSerialConsoleAccessStatusRequest {
  @override
  final bool dryRun;

  factory _$GetSerialConsoleAccessStatusRequest(
          [void Function(GetSerialConsoleAccessStatusRequestBuilder)?
              updates]) =>
      (new GetSerialConsoleAccessStatusRequestBuilder()..update(updates))
          ._build();

  _$GetSerialConsoleAccessStatusRequest._({required this.dryRun}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetSerialConsoleAccessStatusRequest', 'dryRun');
  }

  @override
  GetSerialConsoleAccessStatusRequest rebuild(
          void Function(GetSerialConsoleAccessStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSerialConsoleAccessStatusRequestBuilder toBuilder() =>
      new GetSerialConsoleAccessStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSerialConsoleAccessStatusRequest &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSerialConsoleAccessStatusRequestBuilder
    implements
        Builder<GetSerialConsoleAccessStatusRequest,
            GetSerialConsoleAccessStatusRequestBuilder> {
  _$GetSerialConsoleAccessStatusRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetSerialConsoleAccessStatusRequestBuilder() {
    GetSerialConsoleAccessStatusRequest._init(this);
  }

  GetSerialConsoleAccessStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSerialConsoleAccessStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSerialConsoleAccessStatusRequest;
  }

  @override
  void update(
      void Function(GetSerialConsoleAccessStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSerialConsoleAccessStatusRequest build() => _build();

  _$GetSerialConsoleAccessStatusRequest _build() {
    final _$result = _$v ??
        new _$GetSerialConsoleAccessStatusRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetSerialConsoleAccessStatusRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
