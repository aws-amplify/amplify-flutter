// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.source;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Source extends Source {
  @override
  final _i2.CustomPolicyDetails? customPolicyDetails;
  @override
  final _i3.Owner owner;
  @override
  final _i5.BuiltList<_i4.SourceDetail>? sourceDetails;
  @override
  final String? sourceIdentifier;

  factory _$Source([void Function(SourceBuilder)? updates]) =>
      (new SourceBuilder()..update(updates))._build();

  _$Source._(
      {this.customPolicyDetails,
      required this.owner,
      this.sourceDetails,
      this.sourceIdentifier})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(owner, r'Source', 'owner');
  }

  @override
  Source rebuild(void Function(SourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceBuilder toBuilder() => new SourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Source &&
        customPolicyDetails == other.customPolicyDetails &&
        owner == other.owner &&
        sourceDetails == other.sourceDetails &&
        sourceIdentifier == other.sourceIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customPolicyDetails.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, sourceDetails.hashCode);
    _$hash = $jc(_$hash, sourceIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceBuilder implements Builder<Source, SourceBuilder> {
  _$Source? _$v;

  _i2.CustomPolicyDetailsBuilder? _customPolicyDetails;
  _i2.CustomPolicyDetailsBuilder get customPolicyDetails =>
      _$this._customPolicyDetails ??= new _i2.CustomPolicyDetailsBuilder();
  set customPolicyDetails(
          _i2.CustomPolicyDetailsBuilder? customPolicyDetails) =>
      _$this._customPolicyDetails = customPolicyDetails;

  _i3.Owner? _owner;
  _i3.Owner? get owner => _$this._owner;
  set owner(_i3.Owner? owner) => _$this._owner = owner;

  _i5.ListBuilder<_i4.SourceDetail>? _sourceDetails;
  _i5.ListBuilder<_i4.SourceDetail> get sourceDetails =>
      _$this._sourceDetails ??= new _i5.ListBuilder<_i4.SourceDetail>();
  set sourceDetails(_i5.ListBuilder<_i4.SourceDetail>? sourceDetails) =>
      _$this._sourceDetails = sourceDetails;

  String? _sourceIdentifier;
  String? get sourceIdentifier => _$this._sourceIdentifier;
  set sourceIdentifier(String? sourceIdentifier) =>
      _$this._sourceIdentifier = sourceIdentifier;

  SourceBuilder() {
    Source._init(this);
  }

  SourceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customPolicyDetails = $v.customPolicyDetails?.toBuilder();
      _owner = $v.owner;
      _sourceDetails = $v.sourceDetails?.toBuilder();
      _sourceIdentifier = $v.sourceIdentifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Source other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Source;
  }

  @override
  void update(void Function(SourceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Source build() => _build();

  _$Source _build() {
    _$Source _$result;
    try {
      _$result = _$v ??
          new _$Source._(
              customPolicyDetails: _customPolicyDetails?.build(),
              owner: BuiltValueNullFieldError.checkNotNull(
                  owner, r'Source', 'owner'),
              sourceDetails: _sourceDetails?.build(),
              sourceIdentifier: sourceIdentifier);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customPolicyDetails';
        _customPolicyDetails?.build();

        _$failedField = 'sourceDetails';
        _sourceDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Source', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
