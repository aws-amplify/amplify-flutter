// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.get_id_response;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
