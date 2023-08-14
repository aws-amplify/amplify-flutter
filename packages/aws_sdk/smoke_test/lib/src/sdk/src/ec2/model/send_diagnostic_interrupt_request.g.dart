// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_diagnostic_interrupt_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendDiagnosticInterruptRequest extends SendDiagnosticInterruptRequest {
  @override
  final String? instanceId;
  @override
  final bool dryRun;

  factory _$SendDiagnosticInterruptRequest(
          [void Function(SendDiagnosticInterruptRequestBuilder)? updates]) =>
      (new SendDiagnosticInterruptRequestBuilder()..update(updates))._build();

  _$SendDiagnosticInterruptRequest._({this.instanceId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'SendDiagnosticInterruptRequest', 'dryRun');
  }

  @override
  SendDiagnosticInterruptRequest rebuild(
          void Function(SendDiagnosticInterruptRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendDiagnosticInterruptRequestBuilder toBuilder() =>
      new SendDiagnosticInterruptRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendDiagnosticInterruptRequest &&
        instanceId == other.instanceId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SendDiagnosticInterruptRequestBuilder
    implements
        Builder<SendDiagnosticInterruptRequest,
            SendDiagnosticInterruptRequestBuilder> {
  _$SendDiagnosticInterruptRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  SendDiagnosticInterruptRequestBuilder() {
    SendDiagnosticInterruptRequest._init(this);
  }

  SendDiagnosticInterruptRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendDiagnosticInterruptRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendDiagnosticInterruptRequest;
  }

  @override
  void update(void Function(SendDiagnosticInterruptRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendDiagnosticInterruptRequest build() => _build();

  _$SendDiagnosticInterruptRequest _build() {
    final _$result = _$v ??
        new _$SendDiagnosticInterruptRequest._(
            instanceId: instanceId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'SendDiagnosticInterruptRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
