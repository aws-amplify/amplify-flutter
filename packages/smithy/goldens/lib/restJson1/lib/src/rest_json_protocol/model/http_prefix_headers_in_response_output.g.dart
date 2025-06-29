// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_prefix_headers_in_response_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPrefixHeadersInResponseOutput
    extends HttpPrefixHeadersInResponseOutput {
  @override
  final _i3.BuiltMap<String, String>? prefixHeaders;

  factory _$HttpPrefixHeadersInResponseOutput([
    void Function(HttpPrefixHeadersInResponseOutputBuilder)? updates,
  ]) => (HttpPrefixHeadersInResponseOutputBuilder()..update(updates))._build();

  _$HttpPrefixHeadersInResponseOutput._({this.prefixHeaders}) : super._();
  @override
  HttpPrefixHeadersInResponseOutput rebuild(
    void Function(HttpPrefixHeadersInResponseOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInResponseOutputBuilder toBuilder() =>
      HttpPrefixHeadersInResponseOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInResponseOutput &&
        prefixHeaders == other.prefixHeaders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prefixHeaders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPrefixHeadersInResponseOutputBuilder
    implements
        Builder<
          HttpPrefixHeadersInResponseOutput,
          HttpPrefixHeadersInResponseOutputBuilder
        > {
  _$HttpPrefixHeadersInResponseOutput? _$v;

  _i3.MapBuilder<String, String>? _prefixHeaders;
  _i3.MapBuilder<String, String> get prefixHeaders =>
      _$this._prefixHeaders ??= _i3.MapBuilder<String, String>();
  set prefixHeaders(_i3.MapBuilder<String, String>? prefixHeaders) =>
      _$this._prefixHeaders = prefixHeaders;

  HttpPrefixHeadersInResponseOutputBuilder();

  HttpPrefixHeadersInResponseOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prefixHeaders = $v.prefixHeaders?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPrefixHeadersInResponseOutput other) {
    _$v = other as _$HttpPrefixHeadersInResponseOutput;
  }

  @override
  void update(
    void Function(HttpPrefixHeadersInResponseOutputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInResponseOutput build() => _build();

  _$HttpPrefixHeadersInResponseOutput _build() {
    _$HttpPrefixHeadersInResponseOutput _$result;
    try {
      _$result =
          _$v ??
          _$HttpPrefixHeadersInResponseOutput._(
            prefixHeaders: _prefixHeaders?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'prefixHeaders';
        _prefixHeaders?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HttpPrefixHeadersInResponseOutput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$HttpPrefixHeadersInResponseOutputPayload
    extends HttpPrefixHeadersInResponseOutputPayload {
  factory _$HttpPrefixHeadersInResponseOutputPayload([
    void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)? updates,
  ]) => (HttpPrefixHeadersInResponseOutputPayloadBuilder()..update(updates))
      ._build();

  _$HttpPrefixHeadersInResponseOutputPayload._() : super._();
  @override
  HttpPrefixHeadersInResponseOutputPayload rebuild(
    void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPrefixHeadersInResponseOutputPayloadBuilder toBuilder() =>
      HttpPrefixHeadersInResponseOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPrefixHeadersInResponseOutputPayload;
  }

  @override
  int get hashCode {
    return 1070444313;
  }
}

class HttpPrefixHeadersInResponseOutputPayloadBuilder
    implements
        Builder<
          HttpPrefixHeadersInResponseOutputPayload,
          HttpPrefixHeadersInResponseOutputPayloadBuilder
        > {
  _$HttpPrefixHeadersInResponseOutputPayload? _$v;

  HttpPrefixHeadersInResponseOutputPayloadBuilder();

  @override
  void replace(HttpPrefixHeadersInResponseOutputPayload other) {
    _$v = other as _$HttpPrefixHeadersInResponseOutputPayload;
  }

  @override
  void update(
    void Function(HttpPrefixHeadersInResponseOutputPayloadBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HttpPrefixHeadersInResponseOutputPayload build() => _build();

  _$HttpPrefixHeadersInResponseOutputPayload _build() {
    final _$result = _$v ?? _$HttpPrefixHeadersInResponseOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
