// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provided_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvidedContext extends ProvidedContext {
  @override
  final String? providerArn;
  @override
  final String? contextAssertion;

  factory _$ProvidedContext([void Function(ProvidedContextBuilder)? updates]) =>
      (new ProvidedContextBuilder()..update(updates))._build();

  _$ProvidedContext._({this.providerArn, this.contextAssertion}) : super._();

  @override
  ProvidedContext rebuild(void Function(ProvidedContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvidedContextBuilder toBuilder() =>
      new ProvidedContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvidedContext &&
        providerArn == other.providerArn &&
        contextAssertion == other.contextAssertion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerArn.hashCode);
    _$hash = $jc(_$hash, contextAssertion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProvidedContextBuilder
    implements Builder<ProvidedContext, ProvidedContextBuilder> {
  _$ProvidedContext? _$v;

  String? _providerArn;
  String? get providerArn => _$this._providerArn;
  set providerArn(String? providerArn) => _$this._providerArn = providerArn;

  String? _contextAssertion;
  String? get contextAssertion => _$this._contextAssertion;
  set contextAssertion(String? contextAssertion) =>
      _$this._contextAssertion = contextAssertion;

  ProvidedContextBuilder();

  ProvidedContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerArn = $v.providerArn;
      _contextAssertion = $v.contextAssertion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvidedContext other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvidedContext;
  }

  @override
  void update(void Function(ProvidedContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvidedContext build() => _build();

  _$ProvidedContext _build() {
    final _$result = _$v ??
        new _$ProvidedContext._(
            providerArn: providerArn, contextAssertion: contextAssertion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
