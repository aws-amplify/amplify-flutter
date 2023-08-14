// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ipam_scope_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamScopeRequest extends CreateIpamScopeRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamId;
  @override
  final String? description;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;

  factory _$CreateIpamScopeRequest(
          [void Function(CreateIpamScopeRequestBuilder)? updates]) =>
      (new CreateIpamScopeRequestBuilder()..update(updates))._build();

  _$CreateIpamScopeRequest._(
      {required this.dryRun,
      this.ipamId,
      this.description,
      this.tagSpecifications,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateIpamScopeRequest', 'dryRun');
  }

  @override
  CreateIpamScopeRequest rebuild(
          void Function(CreateIpamScopeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamScopeRequestBuilder toBuilder() =>
      new CreateIpamScopeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamScopeRequest &&
        dryRun == other.dryRun &&
        ipamId == other.ipamId &&
        description == other.description &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamScopeRequestBuilder
    implements Builder<CreateIpamScopeRequest, CreateIpamScopeRequestBuilder> {
  _$CreateIpamScopeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateIpamScopeRequestBuilder() {
    CreateIpamScopeRequest._init(this);
  }

  CreateIpamScopeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamId = $v.ipamId;
      _description = $v.description;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamScopeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamScopeRequest;
  }

  @override
  void update(void Function(CreateIpamScopeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamScopeRequest build() => _build();

  _$CreateIpamScopeRequest _build() {
    _$CreateIpamScopeRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateIpamScopeRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateIpamScopeRequest', 'dryRun'),
              ipamId: ipamId,
              description: description,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamScopeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
