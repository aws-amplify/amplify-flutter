// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.get_federation_token_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFederationTokenRequest extends GetFederationTokenRequest {
  @override
  final String name;
  @override
  final String? policy;
  @override
  final _i5.BuiltList<_i3.PolicyDescriptorType>? policyArns;
  @override
  final int? durationSeconds;
  @override
  final _i5.BuiltList<_i4.Tag>? tags;

  factory _$GetFederationTokenRequest(
          [void Function(GetFederationTokenRequestBuilder)? updates]) =>
      (new GetFederationTokenRequestBuilder()..update(updates))._build();

  _$GetFederationTokenRequest._(
      {required this.name,
      this.policy,
      this.policyArns,
      this.durationSeconds,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'GetFederationTokenRequest', 'name');
  }

  @override
  GetFederationTokenRequest rebuild(
          void Function(GetFederationTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFederationTokenRequestBuilder toBuilder() =>
      new GetFederationTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFederationTokenRequest &&
        name == other.name &&
        policy == other.policy &&
        policyArns == other.policyArns &&
        durationSeconds == other.durationSeconds &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, policyArns.hashCode);
    _$hash = $jc(_$hash, durationSeconds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetFederationTokenRequestBuilder
    implements
        Builder<GetFederationTokenRequest, GetFederationTokenRequestBuilder> {
  _$GetFederationTokenRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  _i5.ListBuilder<_i3.PolicyDescriptorType>? _policyArns;
  _i5.ListBuilder<_i3.PolicyDescriptorType> get policyArns =>
      _$this._policyArns ??= new _i5.ListBuilder<_i3.PolicyDescriptorType>();
  set policyArns(_i5.ListBuilder<_i3.PolicyDescriptorType>? policyArns) =>
      _$this._policyArns = policyArns;

  int? _durationSeconds;
  int? get durationSeconds => _$this._durationSeconds;
  set durationSeconds(int? durationSeconds) =>
      _$this._durationSeconds = durationSeconds;

  _i5.ListBuilder<_i4.Tag>? _tags;
  _i5.ListBuilder<_i4.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i4.Tag>();
  set tags(_i5.ListBuilder<_i4.Tag>? tags) => _$this._tags = tags;

  GetFederationTokenRequestBuilder() {
    GetFederationTokenRequest._init(this);
  }

  GetFederationTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _policy = $v.policy;
      _policyArns = $v.policyArns?.toBuilder();
      _durationSeconds = $v.durationSeconds;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFederationTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFederationTokenRequest;
  }

  @override
  void update(void Function(GetFederationTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFederationTokenRequest build() => _build();

  _$GetFederationTokenRequest _build() {
    _$GetFederationTokenRequest _$result;
    try {
      _$result = _$v ??
          new _$GetFederationTokenRequest._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'GetFederationTokenRequest', 'name'),
              policy: policy,
              policyArns: _policyArns?.build(),
              durationSeconds: durationSeconds,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyArns';
        _policyArns?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFederationTokenRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
