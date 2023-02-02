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
    var _$hash = 0;
    _$hash = $jc(_$hash, endpointResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
