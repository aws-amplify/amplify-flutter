// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.analytics_metadata_type;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, analyticsEndpointId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
