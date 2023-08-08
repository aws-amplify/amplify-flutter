// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ignores_wrapping_xml_name_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IgnoresWrappingXmlNameOutput extends IgnoresWrappingXmlNameOutput {
  @override
  final String? foo;

  factory _$IgnoresWrappingXmlNameOutput(
          [void Function(IgnoresWrappingXmlNameOutputBuilder)? updates]) =>
      (new IgnoresWrappingXmlNameOutputBuilder()..update(updates))._build();

  _$IgnoresWrappingXmlNameOutput._({this.foo}) : super._();

  @override
  IgnoresWrappingXmlNameOutput rebuild(
          void Function(IgnoresWrappingXmlNameOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IgnoresWrappingXmlNameOutputBuilder toBuilder() =>
      new IgnoresWrappingXmlNameOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IgnoresWrappingXmlNameOutput && foo == other.foo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IgnoresWrappingXmlNameOutputBuilder
    implements
        Builder<IgnoresWrappingXmlNameOutput,
            IgnoresWrappingXmlNameOutputBuilder> {
  _$IgnoresWrappingXmlNameOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  IgnoresWrappingXmlNameOutputBuilder();

  IgnoresWrappingXmlNameOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IgnoresWrappingXmlNameOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IgnoresWrappingXmlNameOutput;
  }

  @override
  void update(void Function(IgnoresWrappingXmlNameOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IgnoresWrappingXmlNameOutput build() => _build();

  _$IgnoresWrappingXmlNameOutput _build() {
    final _$result = _$v ?? new _$IgnoresWrappingXmlNameOutput._(foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
