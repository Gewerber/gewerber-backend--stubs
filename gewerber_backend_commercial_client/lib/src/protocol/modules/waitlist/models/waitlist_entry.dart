/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../../../modules/waitlist/models/waitlist_locale.dart' as _i2;
import '../../../modules/waitlist/models/waitlist_source.dart' as _i3;
import '../../../modules/waitlist/models/waitlist_status.dart' as _i4;

abstract class WaitlistEntry
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  WaitlistEntry._({
    this.id,
    required this.email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    this.referrer,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    this.invitedAt,
  }) : locale = locale ?? _i2.WaitlistLocale.de,
       source = source ?? _i3.WaitlistSource.website,
       status = status ?? _i4.WaitlistStatus.pending,
       createdAt = createdAt ?? DateTime.now();

  factory WaitlistEntry({
    int? id,
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) = _WaitlistEntryImpl;

  factory WaitlistEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return WaitlistEntry(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      locale: jsonSerialization['locale'] == null
          ? null
          : _i2.WaitlistLocale.fromJson(
              (jsonSerialization['locale'] as String),
            ),
      source: jsonSerialization['source'] == null
          ? null
          : _i3.WaitlistSource.fromJson(
              (jsonSerialization['source'] as String),
            ),
      referrer: jsonSerialization['referrer'] as String?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      businessType: jsonSerialization['businessType'] as String?,
      status: jsonSerialization['status'] == null
          ? null
          : _i4.WaitlistStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      invitedAt: jsonSerialization['invitedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['invitedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String email;

  _i2.WaitlistLocale locale;

  _i3.WaitlistSource source;

  String? referrer;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  String? businessType;

  _i4.WaitlistStatus status;

  DateTime createdAt;

  DateTime? invitedAt;

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WaitlistEntry copyWith({
    int? id,
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WaitlistEntryImpl extends WaitlistEntry {
  _WaitlistEntryImpl({
    int? id,
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) : super._(
         id: id,
         email: email,
         locale: locale,
         source: source,
         referrer: referrer,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         businessType: businessType,
         status: status,
         createdAt: createdAt,
         invitedAt: invitedAt,
       );

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WaitlistEntry copyWith({
    Object? id = _Undefined,
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    Object? referrer = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    Object? businessType = _Undefined,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    Object? invitedAt = _Undefined,
  }) {
    return WaitlistEntry(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      locale: locale ?? this.locale,
      source: source ?? this.source,
      referrer: referrer is String? ? referrer : this.referrer,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      businessType: businessType is String? ? businessType : this.businessType,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      invitedAt: invitedAt is DateTime? ? invitedAt : this.invitedAt,
    );
  }
}
