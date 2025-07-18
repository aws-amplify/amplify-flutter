// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'malformed_accept_with_generic_string_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedAcceptWithGenericStringOutput
    extends MalformedAcceptWithGenericStringOutput {
  @override
  final String? payload;

  factory _$MalformedAcceptWithGenericStringOutput([
    void Function(MalformedAcceptWithGenericStringOutputBuilder)? updates,
  ]) => (MalformedAcceptWithGenericStringOutputBuilder()..update(updates))
      ._build();

  _$MalformedAcceptWithGenericStringOutput._({this.payload}) : super._();
  @override
  MalformedAcceptWithGenericStringOutput rebuild(
    void Function(MalformedAcceptWithGenericStringOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MalformedAcceptWithGenericStringOutputBuilder toBuilder() =>
      MalformedAcceptWithGenericStringOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedAcceptWithGenericStringOutput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedAcceptWithGenericStringOutputBuilder
    implements
        Builder<
          MalformedAcceptWithGenericStringOutput,
          MalformedAcceptWithGenericStringOutputBuilder
        > {
  _$MalformedAcceptWithGenericStringOutput? _$v;

  String? _payload;
  String? get payload => _$this._payload;
  set payload(String? payload) => _$this._payload = payload;

  MalformedAcceptWithGenericStringOutputBuilder();

  MalformedAcceptWithGenericStringOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedAcceptWithGenericStringOutput other) {
    _$v = other as _$MalformedAcceptWithGenericStringOutput;
  }

  @override
  void update(
    void Function(MalformedAcceptWithGenericStringOutputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  MalformedAcceptWithGenericStringOutput build() => _build();

  _$MalformedAcceptWithGenericStringOutput _build() {
    final _$result =
        _$v ?? _$MalformedAcceptWithGenericStringOutput._(payload: payload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
