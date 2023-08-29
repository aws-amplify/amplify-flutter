// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vpc_peering_connection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcPeeringConnection extends VpcPeeringConnection {
  @override
  final VpcPeeringConnectionVpcInfo? accepterVpcInfo;
  @override
  final DateTime? expirationTime;
  @override
  final VpcPeeringConnectionVpcInfo? requesterVpcInfo;
  @override
  final VpcPeeringConnectionStateReason? status;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? vpcPeeringConnectionId;

  factory _$VpcPeeringConnection(
          [void Function(VpcPeeringConnectionBuilder)? updates]) =>
      (new VpcPeeringConnectionBuilder()..update(updates))._build();

  _$VpcPeeringConnection._(
      {this.accepterVpcInfo,
      this.expirationTime,
      this.requesterVpcInfo,
      this.status,
      this.tags,
      this.vpcPeeringConnectionId})
      : super._();

  @override
  VpcPeeringConnection rebuild(
          void Function(VpcPeeringConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcPeeringConnectionBuilder toBuilder() =>
      new VpcPeeringConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcPeeringConnection &&
        accepterVpcInfo == other.accepterVpcInfo &&
        expirationTime == other.expirationTime &&
        requesterVpcInfo == other.requesterVpcInfo &&
        status == other.status &&
        tags == other.tags &&
        vpcPeeringConnectionId == other.vpcPeeringConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accepterVpcInfo.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
    _$hash = $jc(_$hash, requesterVpcInfo.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcPeeringConnectionBuilder
    implements Builder<VpcPeeringConnection, VpcPeeringConnectionBuilder> {
  _$VpcPeeringConnection? _$v;

  VpcPeeringConnectionVpcInfoBuilder? _accepterVpcInfo;
  VpcPeeringConnectionVpcInfoBuilder get accepterVpcInfo =>
      _$this._accepterVpcInfo ??= new VpcPeeringConnectionVpcInfoBuilder();
  set accepterVpcInfo(VpcPeeringConnectionVpcInfoBuilder? accepterVpcInfo) =>
      _$this._accepterVpcInfo = accepterVpcInfo;

  DateTime? _expirationTime;
  DateTime? get expirationTime => _$this._expirationTime;
  set expirationTime(DateTime? expirationTime) =>
      _$this._expirationTime = expirationTime;

  VpcPeeringConnectionVpcInfoBuilder? _requesterVpcInfo;
  VpcPeeringConnectionVpcInfoBuilder get requesterVpcInfo =>
      _$this._requesterVpcInfo ??= new VpcPeeringConnectionVpcInfoBuilder();
  set requesterVpcInfo(VpcPeeringConnectionVpcInfoBuilder? requesterVpcInfo) =>
      _$this._requesterVpcInfo = requesterVpcInfo;

  VpcPeeringConnectionStateReasonBuilder? _status;
  VpcPeeringConnectionStateReasonBuilder get status =>
      _$this._status ??= new VpcPeeringConnectionStateReasonBuilder();
  set status(VpcPeeringConnectionStateReasonBuilder? status) =>
      _$this._status = status;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _vpcPeeringConnectionId;
  String? get vpcPeeringConnectionId => _$this._vpcPeeringConnectionId;
  set vpcPeeringConnectionId(String? vpcPeeringConnectionId) =>
      _$this._vpcPeeringConnectionId = vpcPeeringConnectionId;

  VpcPeeringConnectionBuilder();

  VpcPeeringConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accepterVpcInfo = $v.accepterVpcInfo?.toBuilder();
      _expirationTime = $v.expirationTime;
      _requesterVpcInfo = $v.requesterVpcInfo?.toBuilder();
      _status = $v.status?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _vpcPeeringConnectionId = $v.vpcPeeringConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcPeeringConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcPeeringConnection;
  }

  @override
  void update(void Function(VpcPeeringConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcPeeringConnection build() => _build();

  _$VpcPeeringConnection _build() {
    _$VpcPeeringConnection _$result;
    try {
      _$result = _$v ??
          new _$VpcPeeringConnection._(
              accepterVpcInfo: _accepterVpcInfo?.build(),
              expirationTime: expirationTime,
              requesterVpcInfo: _requesterVpcInfo?.build(),
              status: _status?.build(),
              tags: _tags?.build(),
              vpcPeeringConnectionId: vpcPeeringConnectionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accepterVpcInfo';
        _accepterVpcInfo?.build();

        _$failedField = 'requesterVpcInfo';
        _requesterVpcInfo?.build();
        _$failedField = 'status';
        _status?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcPeeringConnection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
