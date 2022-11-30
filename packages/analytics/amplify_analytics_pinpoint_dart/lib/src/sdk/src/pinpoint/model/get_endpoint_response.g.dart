// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_endpoint_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetEndpointResponse extends GetEndpointResponse {
  @override
  final _i3.EndpointResponse endpointResponse;

  factory _$GetEndpointResponse(
          [void Function(GetEndpointResponseBuilder)? updates]) =>
      (new GetEndpointResponseBuilder()..update(updates))._build();

  _$GetEndpointResponse._({required this.endpointResponse}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpointResponse, r'GetEndpointResponse', 'endpointResponse');
  }

  @override
  GetEndpointResponse rebuild(
          void Function(GetEndpointResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetEndpointResponseBuilder toBuilder() =>
      new GetEndpointResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetEndpointResponse &&
        endpointResponse == other.endpointResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, endpointResponse.hashCode));
  }
}

class GetEndpointResponseBuilder
    implements Builder<GetEndpointResponse, GetEndpointResponseBuilder> {
  _$GetEndpointResponse? _$v;

  _i3.EndpointResponseBuilder? _endpointResponse;
  _i3.EndpointResponseBuilder get endpointResponse =>
      _$this._endpointResponse ??= new _i3.EndpointResponseBuilder();
  set endpointResponse(_i3.EndpointResponseBuilder? endpointResponse) =>
      _$this._endpointResponse = endpointResponse;

  GetEndpointResponseBuilder() {
    GetEndpointResponse._init(this);
  }

  GetEndpointResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpointResponse = $v.endpointResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetEndpointResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetEndpointResponse;
  }

  @override
  void update(void Function(GetEndpointResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetEndpointResponse build() => _build();

  _$GetEndpointResponse _build() {
    _$GetEndpointResponse _$result;
    try {
      _$result = _$v ??
          new _$GetEndpointResponse._(
              endpointResponse: endpointResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointResponse';
        endpointResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetEndpointResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
