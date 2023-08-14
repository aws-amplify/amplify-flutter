// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_image_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyImageAttributeRequest extends ModifyImageAttributeRequest {
  @override
  final String? attribute;
  @override
  final AttributeValue? description;
  @override
  final String? imageId;
  @override
  final LaunchPermissionModifications? launchPermission;
  @override
  final OperationType? operationType;
  @override
  final _i3.BuiltList<String>? productCodes;
  @override
  final _i3.BuiltList<String>? userGroups;
  @override
  final _i3.BuiltList<String>? userIds;
  @override
  final String? value;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? organizationArns;
  @override
  final _i3.BuiltList<String>? organizationalUnitArns;
  @override
  final AttributeValue? imdsSupport;

  factory _$ModifyImageAttributeRequest(
          [void Function(ModifyImageAttributeRequestBuilder)? updates]) =>
      (new ModifyImageAttributeRequestBuilder()..update(updates))._build();

  _$ModifyImageAttributeRequest._(
      {this.attribute,
      this.description,
      this.imageId,
      this.launchPermission,
      this.operationType,
      this.productCodes,
      this.userGroups,
      this.userIds,
      this.value,
      required this.dryRun,
      this.organizationArns,
      this.organizationalUnitArns,
      this.imdsSupport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyImageAttributeRequest', 'dryRun');
  }

  @override
  ModifyImageAttributeRequest rebuild(
          void Function(ModifyImageAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyImageAttributeRequestBuilder toBuilder() =>
      new ModifyImageAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyImageAttributeRequest &&
        attribute == other.attribute &&
        description == other.description &&
        imageId == other.imageId &&
        launchPermission == other.launchPermission &&
        operationType == other.operationType &&
        productCodes == other.productCodes &&
        userGroups == other.userGroups &&
        userIds == other.userIds &&
        value == other.value &&
        dryRun == other.dryRun &&
        organizationArns == other.organizationArns &&
        organizationalUnitArns == other.organizationalUnitArns &&
        imdsSupport == other.imdsSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, launchPermission.hashCode);
    _$hash = $jc(_$hash, operationType.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, userGroups.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, organizationArns.hashCode);
    _$hash = $jc(_$hash, organizationalUnitArns.hashCode);
    _$hash = $jc(_$hash, imdsSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyImageAttributeRequestBuilder
    implements
        Builder<ModifyImageAttributeRequest,
            ModifyImageAttributeRequestBuilder> {
  _$ModifyImageAttributeRequest? _$v;

  String? _attribute;
  String? get attribute => _$this._attribute;
  set attribute(String? attribute) => _$this._attribute = attribute;

  AttributeValueBuilder? _description;
  AttributeValueBuilder get description =>
      _$this._description ??= new AttributeValueBuilder();
  set description(AttributeValueBuilder? description) =>
      _$this._description = description;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  LaunchPermissionModificationsBuilder? _launchPermission;
  LaunchPermissionModificationsBuilder get launchPermission =>
      _$this._launchPermission ??= new LaunchPermissionModificationsBuilder();
  set launchPermission(
          LaunchPermissionModificationsBuilder? launchPermission) =>
      _$this._launchPermission = launchPermission;

  OperationType? _operationType;
  OperationType? get operationType => _$this._operationType;
  set operationType(OperationType? operationType) =>
      _$this._operationType = operationType;

  _i3.ListBuilder<String>? _productCodes;
  _i3.ListBuilder<String> get productCodes =>
      _$this._productCodes ??= new _i3.ListBuilder<String>();
  set productCodes(_i3.ListBuilder<String>? productCodes) =>
      _$this._productCodes = productCodes;

  _i3.ListBuilder<String>? _userGroups;
  _i3.ListBuilder<String> get userGroups =>
      _$this._userGroups ??= new _i3.ListBuilder<String>();
  set userGroups(_i3.ListBuilder<String>? userGroups) =>
      _$this._userGroups = userGroups;

  _i3.ListBuilder<String>? _userIds;
  _i3.ListBuilder<String> get userIds =>
      _$this._userIds ??= new _i3.ListBuilder<String>();
  set userIds(_i3.ListBuilder<String>? userIds) => _$this._userIds = userIds;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _organizationArns;
  _i3.ListBuilder<String> get organizationArns =>
      _$this._organizationArns ??= new _i3.ListBuilder<String>();
  set organizationArns(_i3.ListBuilder<String>? organizationArns) =>
      _$this._organizationArns = organizationArns;

  _i3.ListBuilder<String>? _organizationalUnitArns;
  _i3.ListBuilder<String> get organizationalUnitArns =>
      _$this._organizationalUnitArns ??= new _i3.ListBuilder<String>();
  set organizationalUnitArns(_i3.ListBuilder<String>? organizationalUnitArns) =>
      _$this._organizationalUnitArns = organizationalUnitArns;

  AttributeValueBuilder? _imdsSupport;
  AttributeValueBuilder get imdsSupport =>
      _$this._imdsSupport ??= new AttributeValueBuilder();
  set imdsSupport(AttributeValueBuilder? imdsSupport) =>
      _$this._imdsSupport = imdsSupport;

  ModifyImageAttributeRequestBuilder() {
    ModifyImageAttributeRequest._init(this);
  }

  ModifyImageAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _description = $v.description?.toBuilder();
      _imageId = $v.imageId;
      _launchPermission = $v.launchPermission?.toBuilder();
      _operationType = $v.operationType;
      _productCodes = $v.productCodes?.toBuilder();
      _userGroups = $v.userGroups?.toBuilder();
      _userIds = $v.userIds?.toBuilder();
      _value = $v.value;
      _dryRun = $v.dryRun;
      _organizationArns = $v.organizationArns?.toBuilder();
      _organizationalUnitArns = $v.organizationalUnitArns?.toBuilder();
      _imdsSupport = $v.imdsSupport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyImageAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyImageAttributeRequest;
  }

  @override
  void update(void Function(ModifyImageAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyImageAttributeRequest build() => _build();

  _$ModifyImageAttributeRequest _build() {
    _$ModifyImageAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyImageAttributeRequest._(
              attribute: attribute,
              description: _description?.build(),
              imageId: imageId,
              launchPermission: _launchPermission?.build(),
              operationType: operationType,
              productCodes: _productCodes?.build(),
              userGroups: _userGroups?.build(),
              userIds: _userIds?.build(),
              value: value,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyImageAttributeRequest', 'dryRun'),
              organizationArns: _organizationArns?.build(),
              organizationalUnitArns: _organizationalUnitArns?.build(),
              imdsSupport: _imdsSupport?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'description';
        _description?.build();

        _$failedField = 'launchPermission';
        _launchPermission?.build();

        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'userGroups';
        _userGroups?.build();
        _$failedField = 'userIds';
        _userIds?.build();

        _$failedField = 'organizationArns';
        _organizationArns?.build();
        _$failedField = 'organizationalUnitArns';
        _organizationalUnitArns?.build();
        _$failedField = 'imdsSupport';
        _imdsSupport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyImageAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
