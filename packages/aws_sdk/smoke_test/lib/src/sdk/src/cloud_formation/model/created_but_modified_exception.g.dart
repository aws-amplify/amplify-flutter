// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.created_but_modified_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatedButModifiedException extends CreatedButModifiedException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$CreatedButModifiedException(
          [void Function(CreatedButModifiedExceptionBuilder)? updates]) =>
      (new CreatedButModifiedExceptionBuilder()..update(updates))._build();

  _$CreatedButModifiedException._({this.message, this.headers}) : super._();

  @override
  CreatedButModifiedException rebuild(
          void Function(CreatedButModifiedExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedButModifiedExceptionBuilder toBuilder() =>
      new CreatedButModifiedExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedButModifiedException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatedButModifiedExceptionBuilder
    implements
        Builder<CreatedButModifiedException,
            CreatedButModifiedExceptionBuilder> {
  _$CreatedButModifiedException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  CreatedButModifiedExceptionBuilder() {
    CreatedButModifiedException._init(this);
  }

  CreatedButModifiedExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedButModifiedException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatedButModifiedException;
  }

  @override
  void update(void Function(CreatedButModifiedExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatedButModifiedException build() => _build();

  _$CreatedButModifiedException _build() {
    final _$result = _$v ??
        new _$CreatedButModifiedException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
