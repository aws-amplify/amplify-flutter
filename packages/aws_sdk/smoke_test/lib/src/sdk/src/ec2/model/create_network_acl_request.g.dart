// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_acl_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkAclRequest extends CreateNetworkAclRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;

  factory _$CreateNetworkAclRequest(
          [void Function(CreateNetworkAclRequestBuilder)? updates]) =>
      (new CreateNetworkAclRequestBuilder()..update(updates))._build();

  _$CreateNetworkAclRequest._(
      {required this.dryRun, this.vpcId, this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkAclRequest', 'dryRun');
  }

  @override
  CreateNetworkAclRequest rebuild(
          void Function(CreateNetworkAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkAclRequestBuilder toBuilder() =>
      new CreateNetworkAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkAclRequest &&
        dryRun == other.dryRun &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkAclRequestBuilder
    implements
        Builder<CreateNetworkAclRequest, CreateNetworkAclRequestBuilder> {
  _$CreateNetworkAclRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateNetworkAclRequestBuilder() {
    CreateNetworkAclRequest._init(this);
  }

  CreateNetworkAclRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkAclRequest;
  }

  @override
  void update(void Function(CreateNetworkAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkAclRequest build() => _build();

  _$CreateNetworkAclRequest _build() {
    _$CreateNetworkAclRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkAclRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNetworkAclRequest', 'dryRun'),
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkAclRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
