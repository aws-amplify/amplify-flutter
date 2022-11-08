// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_domain_name_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetDomainNameRequest extends GetDomainNameRequest {
  @override
  final String domainName;

  factory _$GetDomainNameRequest(
          [void Function(GetDomainNameRequestBuilder)? updates]) =>
      (new GetDomainNameRequestBuilder()..update(updates))._build();

  _$GetDomainNameRequest._({required this.domainName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'GetDomainNameRequest', 'domainName');
  }

  @override
  GetDomainNameRequest rebuild(
          void Function(GetDomainNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDomainNameRequestBuilder toBuilder() =>
      new GetDomainNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDomainNameRequest && domainName == other.domainName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, domainName.hashCode));
  }
}

class GetDomainNameRequestBuilder
    implements Builder<GetDomainNameRequest, GetDomainNameRequestBuilder> {
  _$GetDomainNameRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  GetDomainNameRequestBuilder() {
    GetDomainNameRequest._init(this);
  }

  GetDomainNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetDomainNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDomainNameRequest;
  }

  @override
  void update(void Function(GetDomainNameRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDomainNameRequest build() => _build();

  _$GetDomainNameRequest _build() {
    final _$result = _$v ??
        new _$GetDomainNameRequest._(
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'GetDomainNameRequest', 'domainName'));
    replace(_$result);
    return _$result;
  }
}

class _$GetDomainNameRequestPayload extends GetDomainNameRequestPayload {
  factory _$GetDomainNameRequestPayload(
          [void Function(GetDomainNameRequestPayloadBuilder)? updates]) =>
      (new GetDomainNameRequestPayloadBuilder()..update(updates))._build();

  _$GetDomainNameRequestPayload._() : super._();

  @override
  GetDomainNameRequestPayload rebuild(
          void Function(GetDomainNameRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetDomainNameRequestPayloadBuilder toBuilder() =>
      new GetDomainNameRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetDomainNameRequestPayload;
  }

  @override
  int get hashCode {
    return 776683464;
  }
}

class GetDomainNameRequestPayloadBuilder
    implements
        Builder<GetDomainNameRequestPayload,
            GetDomainNameRequestPayloadBuilder> {
  _$GetDomainNameRequestPayload? _$v;

  GetDomainNameRequestPayloadBuilder() {
    GetDomainNameRequestPayload._init(this);
  }

  @override
  void replace(GetDomainNameRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetDomainNameRequestPayload;
  }

  @override
  void update(void Function(GetDomainNameRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetDomainNameRequestPayload build() => _build();

  _$GetDomainNameRequestPayload _build() {
    final _$result = _$v ?? new _$GetDomainNameRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
