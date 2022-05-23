// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity.model.get_id_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIdResponse extends GetIdResponse {
  @override
  final String? identityId;

  factory _$GetIdResponse([void Function(GetIdResponseBuilder)? updates]) =>
      (new GetIdResponseBuilder()..update(updates))._build();

  _$GetIdResponse._({this.identityId}) : super._();

  @override
  GetIdResponse rebuild(void Function(GetIdResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIdResponseBuilder toBuilder() => new GetIdResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIdResponse && identityId == other.identityId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, identityId.hashCode));
  }
}

class GetIdResponseBuilder
    implements Builder<GetIdResponse, GetIdResponseBuilder> {
  _$GetIdResponse? _$v;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  GetIdResponseBuilder() {
    GetIdResponse._init(this);
  }

  GetIdResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityId = $v.identityId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIdResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIdResponse;
  }

  @override
  void update(void Function(GetIdResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIdResponse build() => _build();

  _$GetIdResponse _build() {
    final _$result = _$v ?? new _$GetIdResponse._(identityId: identityId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
