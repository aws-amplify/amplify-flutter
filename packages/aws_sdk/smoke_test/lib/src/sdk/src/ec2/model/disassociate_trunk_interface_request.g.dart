// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_trunk_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTrunkInterfaceRequest
    extends DisassociateTrunkInterfaceRequest {
  @override
  final String? associationId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$DisassociateTrunkInterfaceRequest(
          [void Function(DisassociateTrunkInterfaceRequestBuilder)? updates]) =>
      (new DisassociateTrunkInterfaceRequestBuilder()..update(updates))
          ._build();

  _$DisassociateTrunkInterfaceRequest._(
      {this.associationId, this.clientToken, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateTrunkInterfaceRequest', 'dryRun');
  }

  @override
  DisassociateTrunkInterfaceRequest rebuild(
          void Function(DisassociateTrunkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTrunkInterfaceRequestBuilder toBuilder() =>
      new DisassociateTrunkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTrunkInterfaceRequest &&
        associationId == other.associationId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTrunkInterfaceRequestBuilder
    implements
        Builder<DisassociateTrunkInterfaceRequest,
            DisassociateTrunkInterfaceRequestBuilder> {
  _$DisassociateTrunkInterfaceRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateTrunkInterfaceRequestBuilder() {
    DisassociateTrunkInterfaceRequest._init(this);
  }

  DisassociateTrunkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTrunkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTrunkInterfaceRequest;
  }

  @override
  void update(
      void Function(DisassociateTrunkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTrunkInterfaceRequest build() => _build();

  _$DisassociateTrunkInterfaceRequest _build() {
    final _$result = _$v ??
        new _$DisassociateTrunkInterfaceRequest._(
            associationId: associationId,
            clientToken: clientToken,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisassociateTrunkInterfaceRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
