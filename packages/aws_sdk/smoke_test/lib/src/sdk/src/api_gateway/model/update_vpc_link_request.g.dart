// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_vpc_link_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateVpcLinkRequest extends UpdateVpcLinkRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;
  @override
  final String vpcLinkId;

  factory _$UpdateVpcLinkRequest(
          [void Function(UpdateVpcLinkRequestBuilder)? updates]) =>
      (new UpdateVpcLinkRequestBuilder()..update(updates))._build();

  _$UpdateVpcLinkRequest._({this.patchOperations, required this.vpcLinkId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpcLinkId, r'UpdateVpcLinkRequest', 'vpcLinkId');
  }

  @override
  UpdateVpcLinkRequest rebuild(
          void Function(UpdateVpcLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateVpcLinkRequestBuilder toBuilder() =>
      new UpdateVpcLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateVpcLinkRequest &&
        patchOperations == other.patchOperations &&
        vpcLinkId == other.vpcLinkId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, patchOperations.hashCode), vpcLinkId.hashCode));
  }
}

class UpdateVpcLinkRequestBuilder
    implements Builder<UpdateVpcLinkRequest, UpdateVpcLinkRequestBuilder> {
  _$UpdateVpcLinkRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  String? _vpcLinkId;
  String? get vpcLinkId => _$this._vpcLinkId;
  set vpcLinkId(String? vpcLinkId) => _$this._vpcLinkId = vpcLinkId;

  UpdateVpcLinkRequestBuilder() {
    UpdateVpcLinkRequest._init(this);
  }

  UpdateVpcLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _vpcLinkId = $v.vpcLinkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateVpcLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateVpcLinkRequest;
  }

  @override
  void update(void Function(UpdateVpcLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateVpcLinkRequest build() => _build();

  _$UpdateVpcLinkRequest _build() {
    _$UpdateVpcLinkRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateVpcLinkRequest._(
              patchOperations: _patchOperations?.build(),
              vpcLinkId: BuiltValueNullFieldError.checkNotNull(
                  vpcLinkId, r'UpdateVpcLinkRequest', 'vpcLinkId'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateVpcLinkRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UpdateVpcLinkRequestPayload extends UpdateVpcLinkRequestPayload {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateVpcLinkRequestPayload(
          [void Function(UpdateVpcLinkRequestPayloadBuilder)? updates]) =>
      (new UpdateVpcLinkRequestPayloadBuilder()..update(updates))._build();

  _$UpdateVpcLinkRequestPayload._({this.patchOperations}) : super._();

  @override
  UpdateVpcLinkRequestPayload rebuild(
          void Function(UpdateVpcLinkRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateVpcLinkRequestPayloadBuilder toBuilder() =>
      new UpdateVpcLinkRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateVpcLinkRequestPayload &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateVpcLinkRequestPayloadBuilder
    implements
        Builder<UpdateVpcLinkRequestPayload,
            UpdateVpcLinkRequestPayloadBuilder> {
  _$UpdateVpcLinkRequestPayload? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateVpcLinkRequestPayloadBuilder() {
    UpdateVpcLinkRequestPayload._init(this);
  }

  UpdateVpcLinkRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateVpcLinkRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateVpcLinkRequestPayload;
  }

  @override
  void update(void Function(UpdateVpcLinkRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateVpcLinkRequestPayload build() => _build();

  _$UpdateVpcLinkRequestPayload _build() {
    _$UpdateVpcLinkRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$UpdateVpcLinkRequestPayload._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateVpcLinkRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
