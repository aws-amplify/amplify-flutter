// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_security_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSecurityGroupRequest extends CreateSecurityGroupRequest {
  @override
  final String? description;
  @override
  final String? groupName;
  @override
  final String? vpcId;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateSecurityGroupRequest(
          [void Function(CreateSecurityGroupRequestBuilder)? updates]) =>
      (new CreateSecurityGroupRequestBuilder()..update(updates))._build();

  _$CreateSecurityGroupRequest._(
      {this.description,
      this.groupName,
      this.vpcId,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateSecurityGroupRequest', 'dryRun');
  }

  @override
  CreateSecurityGroupRequest rebuild(
          void Function(CreateSecurityGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSecurityGroupRequestBuilder toBuilder() =>
      new CreateSecurityGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSecurityGroupRequest &&
        description == other.description &&
        groupName == other.groupName &&
        vpcId == other.vpcId &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSecurityGroupRequestBuilder
    implements
        Builder<CreateSecurityGroupRequest, CreateSecurityGroupRequestBuilder> {
  _$CreateSecurityGroupRequest? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateSecurityGroupRequestBuilder() {
    CreateSecurityGroupRequest._init(this);
  }

  CreateSecurityGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _groupName = $v.groupName;
      _vpcId = $v.vpcId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSecurityGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSecurityGroupRequest;
  }

  @override
  void update(void Function(CreateSecurityGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSecurityGroupRequest build() => _build();

  _$CreateSecurityGroupRequest _build() {
    _$CreateSecurityGroupRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSecurityGroupRequest._(
              description: description,
              groupName: groupName,
              vpcId: vpcId,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateSecurityGroupRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSecurityGroupRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
