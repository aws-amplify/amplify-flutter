// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_classic_link_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachClassicLinkVpcRequest extends AttachClassicLinkVpcRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? groups;
  @override
  final String? instanceId;
  @override
  final String? vpcId;

  factory _$AttachClassicLinkVpcRequest(
          [void Function(AttachClassicLinkVpcRequestBuilder)? updates]) =>
      (new AttachClassicLinkVpcRequestBuilder()..update(updates))._build();

  _$AttachClassicLinkVpcRequest._(
      {required this.dryRun, this.groups, this.instanceId, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachClassicLinkVpcRequest', 'dryRun');
  }

  @override
  AttachClassicLinkVpcRequest rebuild(
          void Function(AttachClassicLinkVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachClassicLinkVpcRequestBuilder toBuilder() =>
      new AttachClassicLinkVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachClassicLinkVpcRequest &&
        dryRun == other.dryRun &&
        groups == other.groups &&
        instanceId == other.instanceId &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachClassicLinkVpcRequestBuilder
    implements
        Builder<AttachClassicLinkVpcRequest,
            AttachClassicLinkVpcRequestBuilder> {
  _$AttachClassicLinkVpcRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _groups;
  _i3.ListBuilder<String> get groups =>
      _$this._groups ??= new _i3.ListBuilder<String>();
  set groups(_i3.ListBuilder<String>? groups) => _$this._groups = groups;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  AttachClassicLinkVpcRequestBuilder() {
    AttachClassicLinkVpcRequest._init(this);
  }

  AttachClassicLinkVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groups = $v.groups?.toBuilder();
      _instanceId = $v.instanceId;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachClassicLinkVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachClassicLinkVpcRequest;
  }

  @override
  void update(void Function(AttachClassicLinkVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachClassicLinkVpcRequest build() => _build();

  _$AttachClassicLinkVpcRequest _build() {
    _$AttachClassicLinkVpcRequest _$result;
    try {
      _$result = _$v ??
          new _$AttachClassicLinkVpcRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'AttachClassicLinkVpcRequest', 'dryRun'),
              groups: _groups?.build(),
              instanceId: instanceId,
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttachClassicLinkVpcRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
