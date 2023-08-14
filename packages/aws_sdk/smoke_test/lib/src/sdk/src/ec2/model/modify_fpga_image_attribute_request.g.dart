// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_fpga_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyFpgaImageAttributeRequest
    extends ModifyFpgaImageAttributeRequest {
  @override
  final bool dryRun;
  @override
  final String? fpgaImageId;
  @override
  final FpgaImageAttributeName? attribute;
  @override
  final OperationType? operationType;
  @override
  final _i3.BuiltList<String>? userIds;
  @override
  final _i3.BuiltList<String>? userGroups;
  @override
  final _i3.BuiltList<String>? productCodes;
  @override
  final LoadPermissionModifications? loadPermission;
  @override
  final String? description;
  @override
  final String? name;

  factory _$ModifyFpgaImageAttributeRequest(
          [void Function(ModifyFpgaImageAttributeRequestBuilder)? updates]) =>
      (new ModifyFpgaImageAttributeRequestBuilder()..update(updates))._build();

  _$ModifyFpgaImageAttributeRequest._(
      {required this.dryRun,
      this.fpgaImageId,
      this.attribute,
      this.operationType,
      this.userIds,
      this.userGroups,
      this.productCodes,
      this.loadPermission,
      this.description,
      this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyFpgaImageAttributeRequest', 'dryRun');
  }

  @override
  ModifyFpgaImageAttributeRequest rebuild(
          void Function(ModifyFpgaImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyFpgaImageAttributeRequestBuilder toBuilder() =>
      new ModifyFpgaImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyFpgaImageAttributeRequest &&
        dryRun == other.dryRun &&
        fpgaImageId == other.fpgaImageId &&
        attribute == other.attribute &&
        operationType == other.operationType &&
        userIds == other.userIds &&
        userGroups == other.userGroups &&
        productCodes == other.productCodes &&
        loadPermission == other.loadPermission &&
        description == other.description &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, operationType.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, userGroups.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, loadPermission.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyFpgaImageAttributeRequestBuilder
    implements
        Builder<ModifyFpgaImageAttributeRequest,
            ModifyFpgaImageAttributeRequestBuilder> {
  _$ModifyFpgaImageAttributeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  FpgaImageAttributeName? _attribute;
  FpgaImageAttributeName? get attribute => _$this._attribute;
  set attribute(FpgaImageAttributeName? attribute) =>
      _$this._attribute = attribute;

  OperationType? _operationType;
  OperationType? get operationType => _$this._operationType;
  set operationType(OperationType? operationType) =>
      _$this._operationType = operationType;

  _i3.ListBuilder<String>? _userIds;
  _i3.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i3.ListBuilder<String>();
  set userIds(_i3.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  _i3.ListBuilder<String>? _userGroups;
  _i3.ListBuilder<String> get userGroups =>
      _$this._userGroups ??= new _i3.ListBuilder<String>();
  set userGroups(_i3.ListBuilder<String>? userGroups) =>
      _$this._userGroups = userGroups;

  _i3.ListBuilder<String>? _productCodes;
  _i3.ListBuilder<String> get productCodes =>
      _$this._productCodes ??= new _i3.ListBuilder<String>();
  set productCodes(_i3.ListBuilder<String>? productCodes) =>
      _$this._productCodes = productCodes;

  LoadPermissionModificationsBuilder? _loadPermission;
  LoadPermissionModificationsBuilder get loadPermission =>
      _$this._loadPermission ??= new LoadPermissionModificationsBuilder();
  set loadPermission(LoadPermissionModificationsBuilder? loadPermission) =>
      _$this._loadPermission = loadPermission;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ModifyFpgaImageAttributeRequestBuilder() {
    ModifyFpgaImageAttributeRequest._init(this);
  }

  ModifyFpgaImageAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _fpgaImageId = $v.fpgaImageId;
      _attribute = $v.attribute;
      _operationType = $v.operationType;
      _userIds = $v.userIds?.toBuilder();
      _userGroups = $v.userGroups?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _loadPermission = $v.loadPermission?.toBuilder();
      _description = $v.description;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyFpgaImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyFpgaImageAttributeRequest;
  }

  @override
  void update(void Function(ModifyFpgaImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyFpgaImageAttributeRequest build() => _build();

  _$ModifyFpgaImageAttributeRequest _build() {
    _$ModifyFpgaImageAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyFpgaImageAttributeRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyFpgaImageAttributeRequest', 'dryRun'),
              fpgaImageId: fpgaImageId,
              attribute: attribute,
              operationType: operationType,
              userIds: _userIds?.build(),
              userGroups: _userGroups?.build(),
              productCodes: _productCodes?.build(),
              loadPermission: _loadPermission?.build(),
              description: description,
              name: name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        _userIds?.build();
        _$failedField = 'userGroups';
        _userGroups?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'loadPermission';
        _loadPermission?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyFpgaImageAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
