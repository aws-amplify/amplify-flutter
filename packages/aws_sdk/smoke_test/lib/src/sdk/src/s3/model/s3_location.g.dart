// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.s3_location;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Location extends S3Location {
  @override
  final _i8.BuiltList<_i2.Grant>? accessControlList;
  @override
  final String bucketName;
  @override
  final _i3.ObjectCannedAcl? cannedAcl;
  @override
  final _i4.Encryption? encryption;
  @override
  final String prefix;
  @override
  final _i5.StorageClass? storageClass;
  @override
  final _i6.Tagging? tagging;
  @override
  final _i8.BuiltList<_i7.MetadataEntry>? userMetadata;

  factory _$S3Location([void Function(S3LocationBuilder)? updates]) =>
      (new S3LocationBuilder()..update(updates))._build();

  _$S3Location._(
      {this.accessControlList,
      required this.bucketName,
      this.cannedAcl,
      this.encryption,
      required this.prefix,
      this.storageClass,
      this.tagging,
      this.userMetadata})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucketName, r'S3Location', 'bucketName');
    BuiltValueNullFieldError.checkNotNull(prefix, r'S3Location', 'prefix');
  }

  @override
  S3Location rebuild(void Function(S3LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3LocationBuilder toBuilder() => new S3LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Location &&
        accessControlList == other.accessControlList &&
        bucketName == other.bucketName &&
        cannedAcl == other.cannedAcl &&
        encryption == other.encryption &&
        prefix == other.prefix &&
        storageClass == other.storageClass &&
        tagging == other.tagging &&
        userMetadata == other.userMetadata;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, accessControlList.hashCode),
                                bucketName.hashCode),
                            cannedAcl.hashCode),
                        encryption.hashCode),
                    prefix.hashCode),
                storageClass.hashCode),
            tagging.hashCode),
        userMetadata.hashCode));
  }
}

class S3LocationBuilder implements Builder<S3Location, S3LocationBuilder> {
  _$S3Location? _$v;

  _i8.ListBuilder<_i2.Grant>? _accessControlList;
  _i8.ListBuilder<_i2.Grant> get accessControlList =>
      _$this._accessControlList ??= new _i8.ListBuilder<_i2.Grant>();
  set accessControlList(_i8.ListBuilder<_i2.Grant>? accessControlList) =>
      _$this._accessControlList = accessControlList;

  String? _bucketName;
  String? get bucketName => _$this._bucketName;
  set bucketName(String? bucketName) => _$this._bucketName = bucketName;

  _i3.ObjectCannedAcl? _cannedAcl;
  _i3.ObjectCannedAcl? get cannedAcl => _$this._cannedAcl;
  set cannedAcl(_i3.ObjectCannedAcl? cannedAcl) =>
      _$this._cannedAcl = cannedAcl;

  _i4.EncryptionBuilder? _encryption;
  _i4.EncryptionBuilder get encryption =>
      _$this._encryption ??= new _i4.EncryptionBuilder();
  set encryption(_i4.EncryptionBuilder? encryption) =>
      _$this._encryption = encryption;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  _i5.StorageClass? _storageClass;
  _i5.StorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i5.StorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  _i6.TaggingBuilder? _tagging;
  _i6.TaggingBuilder get tagging =>
      _$this._tagging ??= new _i6.TaggingBuilder();
  set tagging(_i6.TaggingBuilder? tagging) => _$this._tagging = tagging;

  _i8.ListBuilder<_i7.MetadataEntry>? _userMetadata;
  _i8.ListBuilder<_i7.MetadataEntry> get userMetadata =>
      _$this._userMetadata ??= new _i8.ListBuilder<_i7.MetadataEntry>();
  set userMetadata(_i8.ListBuilder<_i7.MetadataEntry>? userMetadata) =>
      _$this._userMetadata = userMetadata;

  S3LocationBuilder() {
    S3Location._init(this);
  }

  S3LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessControlList = $v.accessControlList?.toBuilder();
      _bucketName = $v.bucketName;
      _cannedAcl = $v.cannedAcl;
      _encryption = $v.encryption?.toBuilder();
      _prefix = $v.prefix;
      _storageClass = $v.storageClass;
      _tagging = $v.tagging?.toBuilder();
      _userMetadata = $v.userMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3Location;
  }

  @override
  void update(void Function(S3LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Location build() => _build();

  _$S3Location _build() {
    _$S3Location _$result;
    try {
      _$result = _$v ??
          new _$S3Location._(
              accessControlList: _accessControlList?.build(),
              bucketName: BuiltValueNullFieldError.checkNotNull(
                  bucketName, r'S3Location', 'bucketName'),
              cannedAcl: cannedAcl,
              encryption: _encryption?.build(),
              prefix: BuiltValueNullFieldError.checkNotNull(
                  prefix, r'S3Location', 'prefix'),
              storageClass: storageClass,
              tagging: _tagging?.build(),
              userMetadata: _userMetadata?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessControlList';
        _accessControlList?.build();

        _$failedField = 'encryption';
        _encryption?.build();

        _$failedField = 'tagging';
        _tagging?.build();
        _$failedField = 'userMetadata';
        _userMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'S3Location', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
