// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_network_acl_association_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceNetworkAclAssociationRequest
    extends ReplaceNetworkAclAssociationRequest {
  @override
  final String? associationId;
  @override
  final bool dryRun;
  @override
  final String? networkAclId;

  factory _$ReplaceNetworkAclAssociationRequest(
          [void Function(ReplaceNetworkAclAssociationRequestBuilder)?
              updates]) =>
      (new ReplaceNetworkAclAssociationRequestBuilder()..update(updates))
          ._build();

  _$ReplaceNetworkAclAssociationRequest._(
      {this.associationId, required this.dryRun, this.networkAclId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ReplaceNetworkAclAssociationRequest', 'dryRun');
  }

  @override
  ReplaceNetworkAclAssociationRequest rebuild(
          void Function(ReplaceNetworkAclAssociationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceNetworkAclAssociationRequestBuilder toBuilder() =>
      new ReplaceNetworkAclAssociationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceNetworkAclAssociationRequest &&
        associationId == other.associationId &&
        dryRun == other.dryRun &&
        networkAclId == other.networkAclId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceNetworkAclAssociationRequestBuilder
    implements
        Builder<ReplaceNetworkAclAssociationRequest,
            ReplaceNetworkAclAssociationRequestBuilder> {
  _$ReplaceNetworkAclAssociationRequest? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  ReplaceNetworkAclAssociationRequestBuilder() {
    ReplaceNetworkAclAssociationRequest._init(this);
  }

  ReplaceNetworkAclAssociationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _dryRun = $v.dryRun;
      _networkAclId = $v.networkAclId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceNetworkAclAssociationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceNetworkAclAssociationRequest;
  }

  @override
  void update(
      void Function(ReplaceNetworkAclAssociationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceNetworkAclAssociationRequest build() => _build();

  _$ReplaceNetworkAclAssociationRequest _build() {
    final _$result = _$v ??
        new _$ReplaceNetworkAclAssociationRequest._(
            associationId: associationId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ReplaceNetworkAclAssociationRequest', 'dryRun'),
            networkAclId: networkAclId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
