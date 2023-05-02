// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.service_specific_credential;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceSpecificCredential extends ServiceSpecificCredential {
  @override
  final DateTime createDate;
  @override
  final String serviceName;
  @override
  final String serviceUserName;
  @override
  final String servicePassword;
  @override
  final String serviceSpecificCredentialId;
  @override
  final String userName;
  @override
  final _i2.StatusType status;

  factory _$ServiceSpecificCredential(
          [void Function(ServiceSpecificCredentialBuilder)? updates]) =>
      (new ServiceSpecificCredentialBuilder()..update(updates))._build();

  _$ServiceSpecificCredential._(
      {required this.createDate,
      required this.serviceName,
      required this.serviceUserName,
      required this.servicePassword,
      required this.serviceSpecificCredentialId,
      required this.userName,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        createDate, r'ServiceSpecificCredential', 'createDate');
    BuiltValueNullFieldError.checkNotNull(
        serviceName, r'ServiceSpecificCredential', 'serviceName');
    BuiltValueNullFieldError.checkNotNull(
        serviceUserName, r'ServiceSpecificCredential', 'serviceUserName');
    BuiltValueNullFieldError.checkNotNull(
        servicePassword, r'ServiceSpecificCredential', 'servicePassword');
    BuiltValueNullFieldError.checkNotNull(serviceSpecificCredentialId,
        r'ServiceSpecificCredential', 'serviceSpecificCredentialId');
    BuiltValueNullFieldError.checkNotNull(
        userName, r'ServiceSpecificCredential', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        status, r'ServiceSpecificCredential', 'status');
  }

  @override
  ServiceSpecificCredential rebuild(
          void Function(ServiceSpecificCredentialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceSpecificCredentialBuilder toBuilder() =>
      new ServiceSpecificCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceSpecificCredential &&
        createDate == other.createDate &&
        serviceName == other.serviceName &&
        serviceUserName == other.serviceUserName &&
        servicePassword == other.servicePassword &&
        serviceSpecificCredentialId == other.serviceSpecificCredentialId &&
        userName == other.userName &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceUserName.hashCode);
    _$hash = $jc(_$hash, servicePassword.hashCode);
    _$hash = $jc(_$hash, serviceSpecificCredentialId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceSpecificCredentialBuilder
    implements
        Builder<ServiceSpecificCredential, ServiceSpecificCredentialBuilder> {
  _$ServiceSpecificCredential? _$v;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _serviceUserName;
  String? get serviceUserName => _$this._serviceUserName;
  set serviceUserName(String? serviceUserName) =>
      _$this._serviceUserName = serviceUserName;

  String? _servicePassword;
  String? get servicePassword => _$this._servicePassword;
  set servicePassword(String? servicePassword) =>
      _$this._servicePassword = servicePassword;

  String? _serviceSpecificCredentialId;
  String? get serviceSpecificCredentialId =>
      _$this._serviceSpecificCredentialId;
  set serviceSpecificCredentialId(String? serviceSpecificCredentialId) =>
      _$this._serviceSpecificCredentialId = serviceSpecificCredentialId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  ServiceSpecificCredentialBuilder() {
    ServiceSpecificCredential._init(this);
  }

  ServiceSpecificCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createDate = $v.createDate;
      _serviceName = $v.serviceName;
      _serviceUserName = $v.serviceUserName;
      _servicePassword = $v.servicePassword;
      _serviceSpecificCredentialId = $v.serviceSpecificCredentialId;
      _userName = $v.userName;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceSpecificCredential other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceSpecificCredential;
  }

  @override
  void update(void Function(ServiceSpecificCredentialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceSpecificCredential build() => _build();

  _$ServiceSpecificCredential _build() {
    final _$result = _$v ??
        new _$ServiceSpecificCredential._(
            createDate: BuiltValueNullFieldError.checkNotNull(
                createDate, r'ServiceSpecificCredential', 'createDate'),
            serviceName: BuiltValueNullFieldError.checkNotNull(
                serviceName, r'ServiceSpecificCredential', 'serviceName'),
            serviceUserName: BuiltValueNullFieldError.checkNotNull(
                serviceUserName, r'ServiceSpecificCredential', 'serviceUserName'),
            servicePassword: BuiltValueNullFieldError.checkNotNull(
                servicePassword, r'ServiceSpecificCredential', 'servicePassword'),
            serviceSpecificCredentialId: BuiltValueNullFieldError.checkNotNull(
                serviceSpecificCredentialId,
                r'ServiceSpecificCredential',
                'serviceSpecificCredentialId'),
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'ServiceSpecificCredential', 'userName'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ServiceSpecificCredential', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
