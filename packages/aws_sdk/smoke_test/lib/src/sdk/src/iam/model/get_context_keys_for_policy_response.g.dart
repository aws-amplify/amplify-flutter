// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_context_keys_for_policy_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetContextKeysForPolicyResponse
    extends GetContextKeysForPolicyResponse {
  @override
  final _i2.BuiltList<String>? contextKeyNames;

  factory _$GetContextKeysForPolicyResponse(
          [void Function(GetContextKeysForPolicyResponseBuilder)? updates]) =>
      (new GetContextKeysForPolicyResponseBuilder()..update(updates))._build();

  _$GetContextKeysForPolicyResponse._({this.contextKeyNames}) : super._();

  @override
  GetContextKeysForPolicyResponse rebuild(
          void Function(GetContextKeysForPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetContextKeysForPolicyResponseBuilder toBuilder() =>
      new GetContextKeysForPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetContextKeysForPolicyResponse &&
        contextKeyNames == other.contextKeyNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contextKeyNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetContextKeysForPolicyResponseBuilder
    implements
        Builder<GetContextKeysForPolicyResponse,
            GetContextKeysForPolicyResponseBuilder> {
  _$GetContextKeysForPolicyResponse? _$v;

  _i2.ListBuilder<String>? _contextKeyNames;
  _i2.ListBuilder<String> get contextKeyNames =>
      _$this._contextKeyNames ??= new _i2.ListBuilder<String>();
  set contextKeyNames(_i2.ListBuilder<String>? contextKeyNames) =>
      _$this._contextKeyNames = contextKeyNames;

  GetContextKeysForPolicyResponseBuilder() {
    GetContextKeysForPolicyResponse._init(this);
  }

  GetContextKeysForPolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contextKeyNames = $v.contextKeyNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetContextKeysForPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetContextKeysForPolicyResponse;
  }

  @override
  void update(void Function(GetContextKeysForPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetContextKeysForPolicyResponse build() => _build();

  _$GetContextKeysForPolicyResponse _build() {
    _$GetContextKeysForPolicyResponse _$result;
    try {
      _$result = _$v ??
          new _$GetContextKeysForPolicyResponse._(
              contextKeyNames: _contextKeyNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contextKeyNames';
        _contextKeyNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetContextKeysForPolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
