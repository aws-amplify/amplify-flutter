// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_domain_name_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteDomainNameRequest extends DeleteDomainNameRequest {
  @override
  final String domainName;

  factory _$DeleteDomainNameRequest(
          [void Function(DeleteDomainNameRequestBuilder)? updates]) =>
      (new DeleteDomainNameRequestBuilder()..update(updates))._build();

  _$DeleteDomainNameRequest._({required this.domainName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        domainName, r'DeleteDomainNameRequest', 'domainName');
  }

  @override
  DeleteDomainNameRequest rebuild(
          void Function(DeleteDomainNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDomainNameRequestBuilder toBuilder() =>
      new DeleteDomainNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDomainNameRequest && domainName == other.domainName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, domainName.hashCode));
  }
}

class DeleteDomainNameRequestBuilder
    implements
        Builder<DeleteDomainNameRequest, DeleteDomainNameRequestBuilder> {
  _$DeleteDomainNameRequest? _$v;

  String? _domainName;
  String? get domainName => _$this._domainName;
  set domainName(String? domainName) => _$this._domainName = domainName;

  DeleteDomainNameRequestBuilder() {
    DeleteDomainNameRequest._init(this);
  }

  DeleteDomainNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _domainName = $v.domainName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteDomainNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDomainNameRequest;
  }

  @override
  void update(void Function(DeleteDomainNameRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDomainNameRequest build() => _build();

  _$DeleteDomainNameRequest _build() {
    final _$result = _$v ??
        new _$DeleteDomainNameRequest._(
            domainName: BuiltValueNullFieldError.checkNotNull(
                domainName, r'DeleteDomainNameRequest', 'domainName'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteDomainNameRequestPayload extends DeleteDomainNameRequestPayload {
  factory _$DeleteDomainNameRequestPayload(
          [void Function(DeleteDomainNameRequestPayloadBuilder)? updates]) =>
      (new DeleteDomainNameRequestPayloadBuilder()..update(updates))._build();

  _$DeleteDomainNameRequestPayload._() : super._();

  @override
  DeleteDomainNameRequestPayload rebuild(
          void Function(DeleteDomainNameRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteDomainNameRequestPayloadBuilder toBuilder() =>
      new DeleteDomainNameRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteDomainNameRequestPayload;
  }

  @override
  int get hashCode {
    return 98222636;
  }
}

class DeleteDomainNameRequestPayloadBuilder
    implements
        Builder<DeleteDomainNameRequestPayload,
            DeleteDomainNameRequestPayloadBuilder> {
  _$DeleteDomainNameRequestPayload? _$v;

  DeleteDomainNameRequestPayloadBuilder() {
    DeleteDomainNameRequestPayload._init(this);
  }

  @override
  void replace(DeleteDomainNameRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteDomainNameRequestPayload;
  }

  @override
  void update(void Function(DeleteDomainNameRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteDomainNameRequestPayload build() => _build();

  _$DeleteDomainNameRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteDomainNameRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
