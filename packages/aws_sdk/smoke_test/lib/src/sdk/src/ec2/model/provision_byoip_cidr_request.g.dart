// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision_byoip_cidr_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvisionByoipCidrRequest extends ProvisionByoipCidrRequest {
  @override
  final String? cidr;
  @override
  final CidrAuthorizationContext? cidrAuthorizationContext;
  @override
  final bool publiclyAdvertisable;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<TagSpecification>? poolTagSpecifications;
  @override
  final bool multiRegion;

  factory _$ProvisionByoipCidrRequest(
          [void Function(ProvisionByoipCidrRequestBuilder)? updates]) =>
      (new ProvisionByoipCidrRequestBuilder()..update(updates))._build();

  _$ProvisionByoipCidrRequest._(
      {this.cidr,
      this.cidrAuthorizationContext,
      required this.publiclyAdvertisable,
      this.description,
      required this.dryRun,
      this.poolTagSpecifications,
      required this.multiRegion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(publiclyAdvertisable,
        r'ProvisionByoipCidrRequest', 'publiclyAdvertisable');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ProvisionByoipCidrRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        multiRegion, r'ProvisionByoipCidrRequest', 'multiRegion');
  }

  @override
  ProvisionByoipCidrRequest rebuild(
          void Function(ProvisionByoipCidrRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvisionByoipCidrRequestBuilder toBuilder() =>
      new ProvisionByoipCidrRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvisionByoipCidrRequest &&
        cidr == other.cidr &&
        cidrAuthorizationContext == other.cidrAuthorizationContext &&
        publiclyAdvertisable == other.publiclyAdvertisable &&
        description == other.description &&
        dryRun == other.dryRun &&
        poolTagSpecifications == other.poolTagSpecifications &&
        multiRegion == other.multiRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, cidrAuthorizationContext.hashCode);
    _$hash = $jc(_$hash, publiclyAdvertisable.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, poolTagSpecifications.hashCode);
    _$hash = $jc(_$hash, multiRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvisionByoipCidrRequestBuilder
    implements
        Builder<ProvisionByoipCidrRequest, ProvisionByoipCidrRequestBuilder> {
  _$ProvisionByoipCidrRequest? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  CidrAuthorizationContextBuilder? _cidrAuthorizationContext;
  CidrAuthorizationContextBuilder get cidrAuthorizationContext =>
      _$this._cidrAuthorizationContext ??=
          new CidrAuthorizationContextBuilder();
  set cidrAuthorizationContext(
          CidrAuthorizationContextBuilder? cidrAuthorizationContext) =>
      _$this._cidrAuthorizationContext = cidrAuthorizationContext;

  bool? _publiclyAdvertisable;
  bool? get publiclyAdvertisable => _$this._publiclyAdvertisable;
  set publiclyAdvertisable(bool? publiclyAdvertisable) =>
      _$this._publiclyAdvertisable = publiclyAdvertisable;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<TagSpecification>? _poolTagSpecifications;
  _i3.ListBuilder<TagSpecification> get poolTagSpecifications =>
      _$this._poolTagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set poolTagSpecifications(
          _i3.ListBuilder<TagSpecification>? poolTagSpecifications) =>
      _$this._poolTagSpecifications = poolTagSpecifications;

  bool? _multiRegion;
  bool? get multiRegion => _$this._multiRegion;
  set multiRegion(bool? multiRegion) => _$this._multiRegion = multiRegion;

  ProvisionByoipCidrRequestBuilder() {
    ProvisionByoipCidrRequest._init(this);
  }

  ProvisionByoipCidrRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _cidrAuthorizationContext = $v.cidrAuthorizationContext?.toBuilder();
      _publiclyAdvertisable = $v.publiclyAdvertisable;
      _description = $v.description;
      _dryRun = $v.dryRun;
      _poolTagSpecifications = $v.poolTagSpecifications?.toBuilder();
      _multiRegion = $v.multiRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvisionByoipCidrRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvisionByoipCidrRequest;
  }

  @override
  void update(void Function(ProvisionByoipCidrRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvisionByoipCidrRequest build() => _build();

  _$ProvisionByoipCidrRequest _build() {
    _$ProvisionByoipCidrRequest _$result;
    try {
      _$result = _$v ??
          new _$ProvisionByoipCidrRequest._(
              cidr: cidr,
              cidrAuthorizationContext: _cidrAuthorizationContext?.build(),
              publiclyAdvertisable: BuiltValueNullFieldError.checkNotNull(
                  publiclyAdvertisable,
                  r'ProvisionByoipCidrRequest',
                  'publiclyAdvertisable'),
              description: description,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ProvisionByoipCidrRequest', 'dryRun'),
              poolTagSpecifications: _poolTagSpecifications?.build(),
              multiRegion: BuiltValueNullFieldError.checkNotNull(
                  multiRegion, r'ProvisionByoipCidrRequest', 'multiRegion'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cidrAuthorizationContext';
        _cidrAuthorizationContext?.build();

        _$failedField = 'poolTagSpecifications';
        _poolTagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProvisionByoipCidrRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
