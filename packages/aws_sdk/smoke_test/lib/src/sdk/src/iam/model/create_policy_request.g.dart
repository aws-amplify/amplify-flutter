// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_policy_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePolicyRequest extends CreatePolicyRequest {
  @override
  final String policyName;
  @override
  final String? path;
  @override
  final String policyDocument;
  @override
  final String? description;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreatePolicyRequest(
          [void Function(CreatePolicyRequestBuilder)? updates]) =>
      (new CreatePolicyRequestBuilder()..update(updates))._build();

  _$CreatePolicyRequest._(
      {required this.policyName,
      this.path,
      required this.policyDocument,
      this.description,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        policyName, r'CreatePolicyRequest', 'policyName');
    BuiltValueNullFieldError.checkNotNull(
        policyDocument, r'CreatePolicyRequest', 'policyDocument');
  }

  @override
  CreatePolicyRequest rebuild(
          void Function(CreatePolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePolicyRequestBuilder toBuilder() =>
      new CreatePolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePolicyRequest &&
        policyName == other.policyName &&
        path == other.path &&
        policyDocument == other.policyDocument &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, policyDocument.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePolicyRequestBuilder
    implements Builder<CreatePolicyRequest, CreatePolicyRequestBuilder> {
  _$CreatePolicyRequest? _$v;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _policyDocument;
  String? get policyDocument => _$this._policyDocument;
  set policyDocument(String? policyDocument) =>
      _$this._policyDocument = policyDocument;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreatePolicyRequestBuilder() {
    CreatePolicyRequest._init(this);
  }

  CreatePolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyName = $v.policyName;
      _path = $v.path;
      _policyDocument = $v.policyDocument;
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePolicyRequest;
  }

  @override
  void update(void Function(CreatePolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePolicyRequest build() => _build();

  _$CreatePolicyRequest _build() {
    _$CreatePolicyRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePolicyRequest._(
              policyName: BuiltValueNullFieldError.checkNotNull(
                  policyName, r'CreatePolicyRequest', 'policyName'),
              path: path,
              policyDocument: BuiltValueNullFieldError.checkNotNull(
                  policyDocument, r'CreatePolicyRequest', 'policyDocument'),
              description: description,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePolicyRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
