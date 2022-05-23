// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.analytics_metadata_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalyticsMetadataType extends AnalyticsMetadataType {
  @override
  final String? analyticsEndpointId;

  factory _$AnalyticsMetadataType(
          [void Function(AnalyticsMetadataTypeBuilder)? updates]) =>
      (new AnalyticsMetadataTypeBuilder()..update(updates))._build();

  _$AnalyticsMetadataType._({this.analyticsEndpointId}) : super._();

  @override
  AnalyticsMetadataType rebuild(
          void Function(AnalyticsMetadataTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalyticsMetadataTypeBuilder toBuilder() =>
      new AnalyticsMetadataTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalyticsMetadataType &&
        analyticsEndpointId == other.analyticsEndpointId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, analyticsEndpointId.hashCode));
  }
}

class AnalyticsMetadataTypeBuilder
    implements Builder<AnalyticsMetadataType, AnalyticsMetadataTypeBuilder> {
  _$AnalyticsMetadataType? _$v;

  String? _analyticsEndpointId;
  String? get analyticsEndpointId => _$this._analyticsEndpointId;
  set analyticsEndpointId(String? analyticsEndpointId) =>
      _$this._analyticsEndpointId = analyticsEndpointId;

  AnalyticsMetadataTypeBuilder() {
    AnalyticsMetadataType._init(this);
  }

  AnalyticsMetadataTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _analyticsEndpointId = $v.analyticsEndpointId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalyticsMetadataType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalyticsMetadataType;
  }

  @override
  void update(void Function(AnalyticsMetadataTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalyticsMetadataType build() => _build();

  _$AnalyticsMetadataType _build() {
    final _$result = _$v ??
        new _$AnalyticsMetadataType._(analyticsEndpointId: analyticsEndpointId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
