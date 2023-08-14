// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_network_interface_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyNetworkInterfaceAttributeRequest
    extends ModifyNetworkInterfaceAttributeRequest {
  @override
  final NetworkInterfaceAttachmentChanges? attachment;
  @override
  final AttributeValue? description;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? groups;
  @override
  final String? networkInterfaceId;
  @override
  final AttributeBooleanValue? sourceDestCheck;
  @override
  final EnaSrdSpecification? enaSrdSpecification;
  @override
  final bool enablePrimaryIpv6;

  factory _$ModifyNetworkInterfaceAttributeRequest(
          [void Function(ModifyNetworkInterfaceAttributeRequestBuilder)?
              updates]) =>
      (new ModifyNetworkInterfaceAttributeRequestBuilder()..update(updates))
          ._build();

  _$ModifyNetworkInterfaceAttributeRequest._(
      {this.attachment,
      this.description,
      required this.dryRun,
      this.groups,
      this.networkInterfaceId,
      this.sourceDestCheck,
      this.enaSrdSpecification,
      required this.enablePrimaryIpv6})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyNetworkInterfaceAttributeRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(enablePrimaryIpv6,
        r'ModifyNetworkInterfaceAttributeRequest', 'enablePrimaryIpv6');
  }

  @override
  ModifyNetworkInterfaceAttributeRequest rebuild(
          void Function(ModifyNetworkInterfaceAttributeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyNetworkInterfaceAttributeRequestBuilder toBuilder() =>
      new ModifyNetworkInterfaceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyNetworkInterfaceAttributeRequest &&
        attachment == other.attachment &&
        description == other.description &&
        dryRun == other.dryRun &&
        groups == other.groups &&
        networkInterfaceId == other.networkInterfaceId &&
        sourceDestCheck == other.sourceDestCheck &&
        enaSrdSpecification == other.enaSrdSpecification &&
        enablePrimaryIpv6 == other.enablePrimaryIpv6;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, enaSrdSpecification.hashCode);
    _$hash = $jc(_$hash, enablePrimaryIpv6.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyNetworkInterfaceAttributeRequestBuilder
    implements
        Builder<ModifyNetworkInterfaceAttributeRequest,
            ModifyNetworkInterfaceAttributeRequestBuilder> {
  _$ModifyNetworkInterfaceAttributeRequest? _$v;

  NetworkInterfaceAttachmentChangesBuilder? _attachment;
  NetworkInterfaceAttachmentChangesBuilder get attachment =>
      _$this._attachment ??= new NetworkInterfaceAttachmentChangesBuilder();
  set attachment(NetworkInterfaceAttachmentChangesBuilder? attachment) =>
      _$this._attachment = attachment;

  AttributeValueBuilder? _description;
  AttributeValueBuilder get description =>
      _$this._description ??= new AttributeValueBuilder();
  set description(AttributeValueBuilder? description) =>
      _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _groups;
  _i3.ListBuilder<String> get groups =>
      _$this._groups ??= new _i3.ListBuilder<String>();
  set groups(_i3.ListBuilder<String>? groups) => _$this._groups = groups;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  AttributeBooleanValueBuilder? _sourceDestCheck;
  AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new AttributeBooleanValueBuilder();
  set sourceDestCheck(AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  EnaSrdSpecificationBuilder? _enaSrdSpecification;
  EnaSrdSpecificationBuilder get enaSrdSpecification =>
      _$this._enaSrdSpecification ??= new EnaSrdSpecificationBuilder();
  set enaSrdSpecification(EnaSrdSpecificationBuilder? enaSrdSpecification) =>
      _$this._enaSrdSpecification = enaSrdSpecification;

  bool? _enablePrimaryIpv6;
  bool? get enablePrimaryIpv6 => _$this._enablePrimaryIpv6;
  set enablePrimaryIpv6(bool? enablePrimaryIpv6) =>
      _$this._enablePrimaryIpv6 = enablePrimaryIpv6;

  ModifyNetworkInterfaceAttributeRequestBuilder() {
    ModifyNetworkInterfaceAttributeRequest._init(this);
  }

  ModifyNetworkInterfaceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachment = $v.attachment?.toBuilder();
      _description = $v.description?.toBuilder();
      _dryRun = $v.dryRun;
      _groups = $v.groups?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _enaSrdSpecification = $v.enaSrdSpecification?.toBuilder();
      _enablePrimaryIpv6 = $v.enablePrimaryIpv6;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyNetworkInterfaceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyNetworkInterfaceAttributeRequest;
  }

  @override
  void update(
      void Function(ModifyNetworkInterfaceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyNetworkInterfaceAttributeRequest build() => _build();

  _$ModifyNetworkInterfaceAttributeRequest _build() {
    _$ModifyNetworkInterfaceAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyNetworkInterfaceAttributeRequest._(
              attachment: _attachment?.build(),
              description: _description?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyNetworkInterfaceAttributeRequest', 'dryRun'),
              groups: _groups?.build(),
              networkInterfaceId: networkInterfaceId,
              sourceDestCheck: _sourceDestCheck?.build(),
              enaSrdSpecification: _enaSrdSpecification?.build(),
              enablePrimaryIpv6: BuiltValueNullFieldError.checkNotNull(
                  enablePrimaryIpv6,
                  r'ModifyNetworkInterfaceAttributeRequest',
                  'enablePrimaryIpv6'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachment';
        _attachment?.build();
        _$failedField = 'description';
        _description?.build();

        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();
        _$failedField = 'enaSrdSpecification';
        _enaSrdSpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyNetworkInterfaceAttributeRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
