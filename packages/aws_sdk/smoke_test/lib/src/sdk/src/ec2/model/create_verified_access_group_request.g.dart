// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_group_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessGroupRequest
    extends CreateVerifiedAccessGroupRequest {
  @override
  final String? verifiedAccessInstanceId;
  @override
  final String? description;
  @override
  final String? policyDocument;
  @override
  final _i3.BuiltList<TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;
  @override
  final bool dryRun;

  factory _$CreateVerifiedAccessGroupRequest(
          [void Function(CreateVerifiedAccessGroupRequestBuilder)? updates]) =>
      (new CreateVerifiedAccessGroupRequestBuilder()..update(updates))._build();

  _$CreateVerifiedAccessGroupRequest._(
      {this.verifiedAccessInstanceId,
      this.description,
      this.policyDocument,
      this.tagSpecifications,
      this.clientToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVerifiedAccessGroupRequest', 'dryRun');
  }

  @override
  CreateVerifiedAccessGroupRequest rebuild(
          void Function(CreateVerifiedAccessGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessGroupRequestBuilder toBuilder() =>
      new CreateVerifiedAccessGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessGroupRequest &&
        verifiedAccessInstanceId == other.verifiedAccessInstanceId &&
        description == other.description &&
        policyDocument == other.policyDocument &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstanceId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessGroupRequestBuilder
    implements
        Builder<CreateVerifiedAccessGroupRequest,
            CreateVerifiedAccessGroupRequestBuilder> {
  _$CreateVerifiedAccessGroupRequest? _$v;

  String? _verifiedAccessInstanceId;
  String? get verifiedAccessInstanceId => _$this._verifiedAccessInstanceId;
  set verifiedAccessInstanceId(String? verifiedAccessInstanceId) =>
      _$this._verifiedAccessInstanceId = verifiedAccessInstanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  _i3.ListBuilder<TagSpecification>? _tagSpecifications;
  _i3.ListBuilder<TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i3.ListBuilder<TagSpecification>();
  set tagSpecifications(_i3.ListBuilder<TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateVerifiedAccessGroupRequestBuilder() {
    CreateVerifiedAccessGroupRequest._init(this);
  }

  CreateVerifiedAccessGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstanceId = $v.verifiedAccessInstanceId;
      _description = $v.description;
      _policyDocument = $v.policyDocument;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessGroupRequest;
  }

  @override
  void update(void Function(CreateVerifiedAccessGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessGroupRequest build() => _build();

  _$CreateVerifiedAccessGroupRequest _build() {
    _$CreateVerifiedAccessGroupRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessGroupRequest._(
              verifiedAccessInstanceId: verifiedAccessInstanceId,
              description: description,
              policyDocument: policyDocument,
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateVerifiedAccessGroupRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessGroupRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
