// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.item_collection_size_limit_exceeded_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemCollectionSizeLimitExceededException
    extends ItemCollectionSizeLimitExceededException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ItemCollectionSizeLimitExceededException(
          [void Function(ItemCollectionSizeLimitExceededExceptionBuilder)?
              updates]) =>
      (new ItemCollectionSizeLimitExceededExceptionBuilder()..update(updates))
          ._build();

  _$ItemCollectionSizeLimitExceededException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ItemCollectionSizeLimitExceededException rebuild(
          void Function(ItemCollectionSizeLimitExceededExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemCollectionSizeLimitExceededExceptionBuilder toBuilder() =>
      new ItemCollectionSizeLimitExceededExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemCollectionSizeLimitExceededException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ItemCollectionSizeLimitExceededExceptionBuilder
    implements
        Builder<ItemCollectionSizeLimitExceededException,
            ItemCollectionSizeLimitExceededExceptionBuilder> {
  _$ItemCollectionSizeLimitExceededException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ItemCollectionSizeLimitExceededExceptionBuilder() {
    ItemCollectionSizeLimitExceededException._init(this);
  }

  ItemCollectionSizeLimitExceededExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemCollectionSizeLimitExceededException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemCollectionSizeLimitExceededException;
  }

  @override
  void update(
      void Function(ItemCollectionSizeLimitExceededExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemCollectionSizeLimitExceededException build() => _build();

  _$ItemCollectionSizeLimitExceededException _build() {
    final _$result = _$v ??
        new _$ItemCollectionSizeLimitExceededException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
