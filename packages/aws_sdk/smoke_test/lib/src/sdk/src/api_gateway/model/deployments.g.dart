// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.deployments;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Deployments extends Deployments {
  @override
  final _i3.BuiltList<_i2.Deployment>? items;
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
    return $jf($jc($jc(0, items.hashCode), position.hashCode));
  }
}

class DeploymentsBuilder implements Builder<Deployments, DeploymentsBuilder> {
  _$Deployments? _$v;

  _i3.ListBuilder<_i2.Deployment>? _items;
  _i3.ListBuilder<_i2.Deployment> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.Deployment>();
  set items(_i3.ListBuilder<_i2.Deployment>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  DeploymentsBuilder() {
    Deployments._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
