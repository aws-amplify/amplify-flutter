// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integrate_services.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrateServices extends IntegrateServices {
  @override
  final _i2.BuiltList<AthenaIntegration>? athenaIntegrations;

  factory _$IntegrateServices(
          [void Function(IntegrateServicesBuilder)? updates]) =>
      (new IntegrateServicesBuilder()..update(updates))._build();

  _$IntegrateServices._({this.athenaIntegrations}) : super._();

  @override
  IntegrateServices rebuild(void Function(IntegrateServicesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrateServicesBuilder toBuilder() =>
      new IntegrateServicesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrateServices &&
        athenaIntegrations == other.athenaIntegrations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, athenaIntegrations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IntegrateServicesBuilder
    implements Builder<IntegrateServices, IntegrateServicesBuilder> {
  _$IntegrateServices? _$v;

  _i2.ListBuilder<AthenaIntegration>? _athenaIntegrations;
  _i2.ListBuilder<AthenaIntegration> get athenaIntegrations =>
      _$this._athenaIntegrations ??= new _i2.ListBuilder<AthenaIntegration>();
  set athenaIntegrations(
          _i2.ListBuilder<AthenaIntegration>? athenaIntegrations) =>
      _$this._athenaIntegrations = athenaIntegrations;

  IntegrateServicesBuilder();

  IntegrateServicesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _athenaIntegrations = $v.athenaIntegrations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrateServices other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IntegrateServices;
  }

  @override
  void update(void Function(IntegrateServicesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrateServices build() => _build();

  _$IntegrateServices _build() {
    _$IntegrateServices _$result;
    try {
      _$result = _$v ??
          new _$IntegrateServices._(
              athenaIntegrations: _athenaIntegrations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'athenaIntegrations';
        _athenaIntegrations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IntegrateServices', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
