// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_stored_query_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutStoredQueryResponse extends PutStoredQueryResponse {
  @override
  final String? queryArn;

  factory _$PutStoredQueryResponse(
          [void Function(PutStoredQueryResponseBuilder)? updates]) =>
      (new PutStoredQueryResponseBuilder()..update(updates))._build();

  _$PutStoredQueryResponse._({this.queryArn}) : super._();

  @override
  PutStoredQueryResponse rebuild(
          void Function(PutStoredQueryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutStoredQueryResponseBuilder toBuilder() =>
      new PutStoredQueryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutStoredQueryResponse && queryArn == other.queryArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutStoredQueryResponseBuilder
    implements Builder<PutStoredQueryResponse, PutStoredQueryResponseBuilder> {
  _$PutStoredQueryResponse? _$v;

  String? _queryArn;
  String? get queryArn => _$this._queryArn;
  set queryArn(String? queryArn) => _$this._queryArn = queryArn;

  PutStoredQueryResponseBuilder();

  PutStoredQueryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryArn = $v.queryArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutStoredQueryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutStoredQueryResponse;
  }

  @override
  void update(void Function(PutStoredQueryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutStoredQueryResponse build() => _build();

  _$PutStoredQueryResponse _build() {
    final _$result = _$v ?? new _$PutStoredQueryResponse._(queryArn: queryArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
