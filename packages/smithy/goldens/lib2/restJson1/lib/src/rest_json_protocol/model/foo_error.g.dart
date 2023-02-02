// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.foo_error;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FooError extends FooError {
  @override
  final Map<String, String>? headers;

  factory _$FooError([void Function(FooErrorBuilder)? updates]) =>
      (new FooErrorBuilder()..update(updates))._build();

  _$FooError._({this.headers}) : super._();

  @override
  FooError rebuild(void Function(FooErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FooErrorBuilder toBuilder() => new FooErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FooError;
  }

  @override
  int get hashCode {
    return 445467195;
  }
}

class FooErrorBuilder implements Builder<FooError, FooErrorBuilder> {
  _$FooError? _$v;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  FooErrorBuilder() {
    FooError._init(this);
  }

  FooErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FooError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FooError;
  }

  @override
  void update(void Function(FooErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FooError build() => _build();

  _$FooError _build() {
    final _$result = _$v ?? new _$FooError._(headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
