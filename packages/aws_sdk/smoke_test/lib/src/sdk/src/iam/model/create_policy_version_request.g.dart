// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_policy_version_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePolicyVersionRequest extends CreatePolicyVersionRequest {
  @override
  final String policyArn;
  @override
  final String policyDocument;
  @override
  final bool setAsDefault;

  factory _$CreatePolicyVersionRequest(
          [void Function(CreatePolicyVersionRequestBuilder)? updates]) =>
      (new CreatePolicyVersionRequestBuilder()..update(updates))._build();

  _$CreatePolicyVersionRequest._(
      {required this.policyArn,
      required this.policyDocument,
      required this.setAsDefault})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyArn, r'CreatePolicyVersionRequest', 'policyArn');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'CreatePolicyVersionRequest', 'policyDocument');
    BuiltValueNullFieldError.checkNotNull(
        setAsDefault, r'CreatePolicyVersionRequest', 'setAsDefault');
  }

  @override
  CreatePolicyVersionRequest rebuild(
          void Function(CreatePolicyVersionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePolicyVersionRequestBuilder toBuilder() =>
      new CreatePolicyVersionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePolicyVersionRequest &&
        policyArn == other.policyArn &&
        policyDocument == other.policyDocument &&
        setAsDefault == other.setAsDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyArn.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, setAsDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePolicyVersionRequestBuilder
    implements
        Builder<CreatePolicyVersionRequest, CreatePolicyVersionRequestBuilder> {
  _$CreatePolicyVersionRequest? _$v;

  String? _policyArn;
  String? get policyArn => _$this._policyArn;
  set policyArn(String? policyArn) => _$this._policyArn = policyArn;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  bool? _setAsDefault;
  bool? get setAsDefault => _$this._setAsDefault;
  set setAsDefault(bool? setAsDefault) => _$this._setAsDefault = setAsDefault;

  CreatePolicyVersionRequestBuilder() {
    CreatePolicyVersionRequest._init(this);
  }

  CreatePolicyVersionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyArn = $v.policyArn;
      _policyDocument = $v.policyDocument;
      _setAsDefault = $v.setAsDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePolicyVersionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePolicyVersionRequest;
  }

  @override
  void update(void Function(CreatePolicyVersionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePolicyVersionRequest build() => _build();

  _$CreatePolicyVersionRequest _build() {
    final _$result = _$v ??
        new _$CreatePolicyVersionRequest._(
            policyArn: BuiltValueNullFieldError.checkNotNull(
                policyArn, r'CreatePolicyVersionRequest', 'policyArn'),
            policyDocument: BuiltValueNullFieldError.checkNotNull(
                policyDocument,
                r'CreatePolicyVersionRequest',
                'policyDocument'),
            setAsDefault: BuiltValueNullFieldError.checkNotNull(
                setAsDefault, r'CreatePolicyVersionRequest', 'setAsDefault'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
