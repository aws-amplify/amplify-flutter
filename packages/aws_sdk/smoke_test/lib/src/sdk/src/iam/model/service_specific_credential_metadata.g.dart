// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.service_specific_credential_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceSpecificCredentialMetadata
    extends ServiceSpecificCredentialMetadata {
  @override
  final String userName;
  @override
  final _i2.StatusType status;
  @override
  final String serviceUserName;
  @override
  final DateTime createDate;
  @override
  final String serviceSpecificCredentialId;
  @override
  final String serviceName;

  factory _$ServiceSpecificCredentialMetadata(
          [void Function(ServiceSpecificCredentialMetadataBuilder)? updates]) =>
      (new ServiceSpecificCredentialMetadataBuilder()..update(updates))
          ._build();

  _$ServiceSpecificCredentialMetadata._(
      {required this.userName,
      required this.status,
      required this.serviceUserName,
      required this.createDate,
      required this.serviceSpecificCredentialId,
      required this.serviceName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ServiceSpecificCredentialMetadata', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ServiceSpecificCredentialMetadata', 'status');
    BuiltValueNullFieldError.checkNotNull(serviceUserName,
        r'ServiceSpecificCredentialMetadata', 'serviceUserName');
    BuiltValueNullFieldError.checkNotNull(
        createDate, r'ServiceSpecificCredentialMetadata', 'createDate');
    BuiltValueNullFieldError.checkNotNull(serviceSpecificCredentialId,
        r'ServiceSpecificCredentialMetadata', 'serviceSpecificCredentialId');
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'ServiceSpecificCredentialMetadata', 'serviceName');
  }

  @override
  ServiceSpecificCredentialMetadata rebuild(
          void Function(ServiceSpecificCredentialMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceSpecificCredentialMetadataBuilder toBuilder() =>
      new ServiceSpecificCredentialMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceSpecificCredentialMetadata &&
        userName == other.userName &&
        status == other.status &&
        serviceUserName == other.serviceUserName &&
        createDate == other.createDate &&
        serviceSpecificCredentialId == other.serviceSpecificCredentialId &&
        serviceName == other.serviceName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, serviceUserName.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, serviceSpecificCredentialId.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceSpecificCredentialMetadataBuilder
    implements
        Builder<ServiceSpecificCredentialMetadata,
            ServiceSpecificCredentialMetadataBuilder> {
  _$ServiceSpecificCredentialMetadata? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  String? _serviceUserName;
  String? get serviceUserName => _$this._serviceUserName;
  set serviceUserName(String? serviceUserName) =>
      _$this._serviceUserName = serviceUserName;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  String? _serviceSpecificCredentialId;
  String? get serviceSpecificCredentialId =>
      _$this._serviceSpecificCredentialId;
  set serviceSpecificCredentialId(String? serviceSpecificCredentialId) =>
      _$this._serviceSpecificCredentialId = serviceSpecificCredentialId;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  ServiceSpecificCredentialMetadataBuilder() {
    ServiceSpecificCredentialMetadata._init(this);
  }

  ServiceSpecificCredentialMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _status = $v.status;
      _serviceUserName = $v.serviceUserName;
      _createDate = $v.createDate;
      _serviceSpecificCredentialId = $v.serviceSpecificCredentialId;
      _serviceName = $v.serviceName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceSpecificCredentialMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceSpecificCredentialMetadata;
  }

  @override
  void update(
      void Function(ServiceSpecificCredentialMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceSpecificCredentialMetadata build() => _build();

  _$ServiceSpecificCredentialMetadata _build() {
    final _$result = _$v ??
        new _$ServiceSpecificCredentialMetadata._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ServiceSpecificCredentialMetadata', 'userName'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ServiceSpecificCredentialMetadata', 'status'),
            serviceUserName: BuiltValueNullFieldError.checkNotNull(
                serviceUserName,
                r'ServiceSpecificCredentialMetadata',
                'serviceUserName'),
            createDate: BuiltValueNullFieldError.checkNotNull(
                createDate, r'ServiceSpecificCredentialMetadata', 'createDate'),
            serviceSpecificCredentialId: BuiltValueNullFieldError.checkNotNull(
                serviceSpecificCredentialId,
                r'ServiceSpecificCredentialMetadata',
                'serviceSpecificCredentialId'),
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'ServiceSpecificCredentialMetadata', 'serviceName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
