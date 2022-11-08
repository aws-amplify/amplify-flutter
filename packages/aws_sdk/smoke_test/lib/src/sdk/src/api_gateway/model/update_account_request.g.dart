// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.update_account_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccountRequest extends UpdateAccountRequest {
  @override
  final _i4.BuiltList<_i3.PatchOperation>? patchOperations;

  factory _$UpdateAccountRequest(
          [void Function(UpdateAccountRequestBuilder)? updates]) =>
      (new UpdateAccountRequestBuilder()..update(updates))._build();

  _$UpdateAccountRequest._({this.patchOperations}) : super._();

  @override
  UpdateAccountRequest rebuild(
          void Function(UpdateAccountRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountRequestBuilder toBuilder() =>
      new UpdateAccountRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountRequest &&
        patchOperations == other.patchOperations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, patchOperations.hashCode));
  }
}

class UpdateAccountRequestBuilder
    implements Builder<UpdateAccountRequest, UpdateAccountRequestBuilder> {
  _$UpdateAccountRequest? _$v;

  _i4.ListBuilder<_i3.PatchOperation>? _patchOperations;
  _i4.ListBuilder<_i3.PatchOperation> get patchOperations =>
      _$this._patchOperations ??= new _i4.ListBuilder<_i3.PatchOperation>();
  set patchOperations(_i4.ListBuilder<_i3.PatchOperation>? patchOperations) =>
      _$this._patchOperations = patchOperations;

  UpdateAccountRequestBuilder() {
    UpdateAccountRequest._init(this);
  }

  UpdateAccountRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _patchOperations = $v.patchOperations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountRequest;
  }

  @override
  void update(void Function(UpdateAccountRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountRequest build() => _build();

  _$UpdateAccountRequest _build() {
    _$UpdateAccountRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateAccountRequest._(
              patchOperations: _patchOperations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'patchOperations';
        _patchOperations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateAccountRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
