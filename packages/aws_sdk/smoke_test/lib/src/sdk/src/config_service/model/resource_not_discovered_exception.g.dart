// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.resource_not_discovered_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourceNotDiscoveredException extends ResourceNotDiscoveredException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ResourceNotDiscoveredException(
          [void Function(ResourceNotDiscoveredExceptionBuilder)? updates]) =>
      (new ResourceNotDiscoveredExceptionBuilder()..update(updates))._build();

  _$ResourceNotDiscoveredException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  ResourceNotDiscoveredException rebuild(
          void Function(ResourceNotDiscoveredExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceNotDiscoveredExceptionBuilder toBuilder() =>
      new ResourceNotDiscoveredExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceNotDiscoveredException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ResourceNotDiscoveredExceptionBuilder
    implements
        Builder<ResourceNotDiscoveredException,
            ResourceNotDiscoveredExceptionBuilder> {
  _$ResourceNotDiscoveredException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ResourceNotDiscoveredExceptionBuilder() {
    ResourceNotDiscoveredException._init(this);
  }

  ResourceNotDiscoveredExceptionBuilder get _$this {
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
  void replace(ResourceNotDiscoveredException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceNotDiscoveredException;
  }

  @override
  void update(void Function(ResourceNotDiscoveredExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceNotDiscoveredException build() => _build();

  _$ResourceNotDiscoveredException _build() {
    final _$result = _$v ??
        new _$ResourceNotDiscoveredException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
