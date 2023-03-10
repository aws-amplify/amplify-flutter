// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_stored_query_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteStoredQueryResponse extends DeleteStoredQueryResponse {
  factory _$DeleteStoredQueryResponse(
          [void Function(DeleteStoredQueryResponseBuilder)? updates]) =>
      (new DeleteStoredQueryResponseBuilder()..update(updates))._build();

  _$DeleteStoredQueryResponse._() : super._();

  @override
  DeleteStoredQueryResponse rebuild(
          void Function(DeleteStoredQueryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteStoredQueryResponseBuilder toBuilder() =>
      new DeleteStoredQueryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteStoredQueryResponse;
  }

  @override
  int get hashCode {
    return 813621575;
  }
}

class DeleteStoredQueryResponseBuilder
    implements
        Builder<DeleteStoredQueryResponse, DeleteStoredQueryResponseBuilder> {
  _$DeleteStoredQueryResponse? _$v;

  DeleteStoredQueryResponseBuilder() {
    DeleteStoredQueryResponse._init(this);
  }

  @override
  void replace(DeleteStoredQueryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteStoredQueryResponse;
  }

  @override
  void update(void Function(DeleteStoredQueryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteStoredQueryResponse build() => _build();

  _$DeleteStoredQueryResponse _build() {
    final _$result = _$v ?? new _$DeleteStoredQueryResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
