// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.endpoint;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Endpoint extends Endpoint {
  @override
  final String address;
  @override
  final _i2.Int64 cachePeriodInMinutes;

  factory _$Endpoint([void Function(EndpointBuilder)? updates]) =>
      (new EndpointBuilder()..update(updates))._build();

  _$Endpoint._({required this.address, required this.cachePeriodInMinutes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'Endpoint', 'address');
    BuiltValueNullFieldError.checkNotNull(
        cachePeriodInMinutes, r'Endpoint', 'cachePeriodInMinutes');
  }

  @override
  Endpoint rebuild(void Function(EndpointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointBuilder toBuilder() => new EndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Endpoint &&
        address == other.address &&
        cachePeriodInMinutes == other.cachePeriodInMinutes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, address.hashCode), cachePeriodInMinutes.hashCode));
  }
}

class EndpointBuilder implements Builder<Endpoint, EndpointBuilder> {
  _$Endpoint? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i2.Int64? _cachePeriodInMinutes;
  _i2.Int64? get cachePeriodInMinutes => _$this._cachePeriodInMinutes;
  set cachePeriodInMinutes(_i2.Int64? cachePeriodInMinutes) =>
      _$this._cachePeriodInMinutes = cachePeriodInMinutes;

  EndpointBuilder() {
    Endpoint._init(this);
  }

  EndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _cachePeriodInMinutes = $v.cachePeriodInMinutes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Endpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Endpoint;
  }

  @override
  void update(void Function(EndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Endpoint build() => _build();

  _$Endpoint _build() {
    final _$result = _$v ??
        new _$Endpoint._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'Endpoint', 'address'),
            cachePeriodInMinutes: BuiltValueNullFieldError.checkNotNull(
                cachePeriodInMinutes, r'Endpoint', 'cachePeriodInMinutes'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
