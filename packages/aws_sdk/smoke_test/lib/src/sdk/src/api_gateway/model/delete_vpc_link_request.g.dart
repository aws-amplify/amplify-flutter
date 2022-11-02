// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.delete_vpc_link_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcLinkRequest extends DeleteVpcLinkRequest {
  @override
  final String vpcLinkId;

  factory _$DeleteVpcLinkRequest(
          [void Function(DeleteVpcLinkRequestBuilder)? updates]) =>
      (new DeleteVpcLinkRequestBuilder()..update(updates))._build();

  _$DeleteVpcLinkRequest._({required this.vpcLinkId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpcLinkId, r'DeleteVpcLinkRequest', 'vpcLinkId');
  }

  @override
  DeleteVpcLinkRequest rebuild(
          void Function(DeleteVpcLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcLinkRequestBuilder toBuilder() =>
      new DeleteVpcLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcLinkRequest && vpcLinkId == other.vpcLinkId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, vpcLinkId.hashCode));
  }
}

class DeleteVpcLinkRequestBuilder
    implements Builder<DeleteVpcLinkRequest, DeleteVpcLinkRequestBuilder> {
  _$DeleteVpcLinkRequest? _$v;

  String? _vpcLinkId;
  String? get vpcLinkId => _$this._vpcLinkId;
  set vpcLinkId(String? vpcLinkId) => _$this._vpcLinkId = vpcLinkId;

  DeleteVpcLinkRequestBuilder() {
    DeleteVpcLinkRequest._init(this);
  }

  DeleteVpcLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcLinkId = $v.vpcLinkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcLinkRequest;
  }

  @override
  void update(void Function(DeleteVpcLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcLinkRequest build() => _build();

  _$DeleteVpcLinkRequest _build() {
    final _$result = _$v ??
        new _$DeleteVpcLinkRequest._(
            vpcLinkId: BuiltValueNullFieldError.checkNotNull(
                vpcLinkId, r'DeleteVpcLinkRequest', 'vpcLinkId'));
    replace(_$result);
    return _$result;
  }
}

class _$DeleteVpcLinkRequestPayload extends DeleteVpcLinkRequestPayload {
  factory _$DeleteVpcLinkRequestPayload(
          [void Function(DeleteVpcLinkRequestPayloadBuilder)? updates]) =>
      (new DeleteVpcLinkRequestPayloadBuilder()..update(updates))._build();

  _$DeleteVpcLinkRequestPayload._() : super._();

  @override
  DeleteVpcLinkRequestPayload rebuild(
          void Function(DeleteVpcLinkRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcLinkRequestPayloadBuilder toBuilder() =>
      new DeleteVpcLinkRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcLinkRequestPayload;
  }

  @override
  int get hashCode {
    return 889741658;
  }
}

class DeleteVpcLinkRequestPayloadBuilder
    implements
        Builder<DeleteVpcLinkRequestPayload,
            DeleteVpcLinkRequestPayloadBuilder> {
  _$DeleteVpcLinkRequestPayload? _$v;

  DeleteVpcLinkRequestPayloadBuilder() {
    DeleteVpcLinkRequestPayload._init(this);
  }

  @override
  void replace(DeleteVpcLinkRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcLinkRequestPayload;
  }

  @override
  void update(void Function(DeleteVpcLinkRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcLinkRequestPayload build() => _build();

  _$DeleteVpcLinkRequestPayload _build() {
    final _$result = _$v ?? new _$DeleteVpcLinkRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
