// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_instance_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessInstanceRequest
    extends ModifyVerifiedAccessInstanceRequest {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? description;
  @override
  final bool dryRun;
  @override
  final String? clientToken;

  factory _$ModifyVerifiedAccessInstanceRequest(
          [void Function(ModifyVerifiedAccessInstanceRequestBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessInstanceRequestBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessInstanceRequest._(
      {this.verifiedAccessInstanceId,
      this.description,
      required this.dryRun,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVerifiedAccessInstanceRequest', 'dryRun');
  }

  @override
  ModifyVerifiedAccessInstanceRequest rebuild(
          void Function(ModifyVerifiedAccessInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessInstanceRequestBuilder toBuilder() =>
      new ModifyVerifiedAccessInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessInstanceRequest &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        description == other.description &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessInstanceRequestBuilder
    implements
        Builder<ModifyVerifiedAccessInstanceRequest,
            ModifyVerifiedAccessInstanceRequestBuilder> {
  _$ModifyVerifiedAccessInstanceRequest? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  ModifyVerifiedAccessInstanceRequestBuilder() {
    ModifyVerifiedAccessInstanceRequest._init(this);
  }

  ModifyVerifiedAccessInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _description = $v.description;
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessInstanceRequest;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessInstanceRequest build() => _build();

  _$ModifyVerifiedAccessInstanceRequest _build() {
    final _$result = _$v ??
        new _$ModifyVerifiedAccessInstanceRequest._(
            verifiedAccessInstanceId: verifiedAccessInstanceId,
            description: description,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVerifiedAccessInstanceRequest', 'dryRun'),
            clientToken: clientToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
