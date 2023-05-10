// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_service_linked_role_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateServiceLinkedRoleRequest extends CreateServiceLinkedRoleRequest {
  @override
  final String awsServiceName;
  @override
  final String? description;
  @override
  final String? customSuffix;

  factory _$CreateServiceLinkedRoleRequest(
          [void Function(CreateServiceLinkedRoleRequestBuilder)? updates]) =>
      (new CreateServiceLinkedRoleRequestBuilder()..update(updates))._build();

  _$CreateServiceLinkedRoleRequest._(
      {required this.awsServiceName, this.description, this.customSuffix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        awsServiceName, r'CreateServiceLinkedRoleRequest', 'awsServiceName');
  }

  @override
  CreateServiceLinkedRoleRequest rebuild(
          void Function(CreateServiceLinkedRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateServiceLinkedRoleRequestBuilder toBuilder() =>
      new CreateServiceLinkedRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateServiceLinkedRoleRequest &&
        awsServiceName == other.awsServiceName &&
        description == other.description &&
        customSuffix == other.customSuffix;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, awsServiceName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, customSuffix.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateServiceLinkedRoleRequestBuilder
    implements
        Builder<CreateServiceLinkedRoleRequest,
            CreateServiceLinkedRoleRequestBuilder> {
  _$CreateServiceLinkedRoleRequest? _$v;

  String? _awsServiceName;
  String? get awsServiceName => _$this._awsServiceName;
  set awsServiceName(String? awsServiceName) =>
      _$this._awsServiceName = awsServiceName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _customSuffix;
  String? get customSuffix => _$this._customSuffix;
  set customSuffix(String? customSuffix) => _$this._customSuffix = customSuffix;

  CreateServiceLinkedRoleRequestBuilder() {
    CreateServiceLinkedRoleRequest._init(this);
  }

  CreateServiceLinkedRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _awsServiceName = $v.awsServiceName;
      _description = $v.description;
      _customSuffix = $v.customSuffix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateServiceLinkedRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateServiceLinkedRoleRequest;
  }

  @override
  void update(void Function(CreateServiceLinkedRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateServiceLinkedRoleRequest build() => _build();

  _$CreateServiceLinkedRoleRequest _build() {
    final _$result = _$v ??
        new _$CreateServiceLinkedRoleRequest._(
            awsServiceName: BuiltValueNullFieldError.checkNotNull(
                awsServiceName,
                r'CreateServiceLinkedRoleRequest',
                'awsServiceName'),
            description: description,
            customSuffix: customSuffix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
