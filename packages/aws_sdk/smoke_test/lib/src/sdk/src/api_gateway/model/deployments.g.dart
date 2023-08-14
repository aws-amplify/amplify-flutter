// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployments.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Deployments extends Deployments {
  @override
  final _i2.BuiltList<Deployment>? items;
  @override
  final String? position;

  factory _$Deployments([void Function(DeploymentsBuilder)? updates]) =>
      (new DeploymentsBuilder()..update(updates))._build();

  _$Deployments._({this.items, this.position}) : super._();

  @override
  Deployments rebuild(void Function(DeploymentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentsBuilder toBuilder() => new DeploymentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Deployments &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeploymentsBuilder implements Builder<Deployments, DeploymentsBuilder> {
  _$Deployments? _$v;

  _i2.ListBuilder<Deployment>? _items;
  _i2.ListBuilder<Deployment> get items =>
      _$this._items ??= new _i2.ListBuilder<Deployment>();
  set items(_i2.ListBuilder<Deployment>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DeploymentsBuilder();

  DeploymentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Deployments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Deployments;
  }

  @override
  void update(void Function(DeploymentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Deployments build() => _build();

  _$Deployments _build() {
    _$Deployments _$result;
    try {
      _$result = _$v ??
          new _$Deployments._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Deployments', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
