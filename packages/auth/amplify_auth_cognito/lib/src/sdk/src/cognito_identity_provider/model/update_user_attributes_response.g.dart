// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.update_user_attributes_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserAttributesResponse extends UpdateUserAttributesResponse {
  @override
  final _i2.BuiltList<_i3.CodeDeliveryDetailsType>? codeDeliveryDetailsList;

  factory _$UpdateUserAttributesResponse(
          [void Function(UpdateUserAttributesResponseBuilder)? updates]) =>
      (new UpdateUserAttributesResponseBuilder()..update(updates))._build();

  _$UpdateUserAttributesResponse._({this.codeDeliveryDetailsList}) : super._();

  @override
  UpdateUserAttributesResponse rebuild(
          void Function(UpdateUserAttributesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserAttributesResponseBuilder toBuilder() =>
      new UpdateUserAttributesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserAttributesResponse &&
        codeDeliveryDetailsList == other.codeDeliveryDetailsList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, codeDeliveryDetailsList.hashCode));
  }
}

class UpdateUserAttributesResponseBuilder
    implements
        Builder<UpdateUserAttributesResponse,
            UpdateUserAttributesResponseBuilder> {
  _$UpdateUserAttributesResponse? _$v;

  _i2.ListBuilder<_i3.CodeDeliveryDetailsType>? _codeDeliveryDetailsList;
  _i2.ListBuilder<_i3.CodeDeliveryDetailsType> get codeDeliveryDetailsList =>
      _$this._codeDeliveryDetailsList ??=
          new _i2.ListBuilder<_i3.CodeDeliveryDetailsType>();
  set codeDeliveryDetailsList(
          _i2.ListBuilder<_i3.CodeDeliveryDetailsType>?
              codeDeliveryDetailsList) =>
      _$this._codeDeliveryDetailsList = codeDeliveryDetailsList;

  UpdateUserAttributesResponseBuilder() {
    UpdateUserAttributesResponse._init(this);
  }

  UpdateUserAttributesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetailsList = $v.codeDeliveryDetailsList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserAttributesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserAttributesResponse;
  }

  @override
  void update(void Function(UpdateUserAttributesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserAttributesResponse build() => _build();

  _$UpdateUserAttributesResponse _build() {
    _$UpdateUserAttributesResponse _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserAttributesResponse._(
              codeDeliveryDetailsList: _codeDeliveryDetailsList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetailsList';
        _codeDeliveryDetailsList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UpdateUserAttributesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
