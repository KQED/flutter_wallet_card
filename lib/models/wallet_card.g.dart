// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletCard _$WalletCardFromJson(Map<String, dynamic> json) => WalletCard(
      id: json['id'] as String,
      type: $enumDecode(_$WalletCardTypeEnumMap, json['type']),
      platformData: json['platformData'] as Map<String, dynamic>,
      metadata:
          WalletCardMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      visuals: json['visuals'] == null
          ? null
          : WalletCardVisuals.fromJson(json['visuals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletCardToJson(WalletCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$WalletCardTypeEnumMap[instance.type]!,
      'platformData': instance.platformData,
      'metadata': instance.metadata,
      'visuals': instance.visuals,
    };

const _$WalletCardTypeEnumMap = {
  WalletCardType.storeCard: 'storeCard',
  WalletCardType.eventTicket: 'eventTicket',
  WalletCardType.boardingPass: 'boardingPass',
  WalletCardType.coupon: 'coupon',
  WalletCardType.generic: 'generic',
  WalletCardType.transit: 'transit',
  WalletCardType.loyalty: 'loyalty',
};

WalletCardMetadata _$WalletCardMetadataFromJson(Map<String, dynamic> json) =>
    WalletCardMetadata(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      primaryFields: (json['primaryFields'] as List<dynamic>?)
          ?.map((e) => PrimaryField.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondaryFields: (json['secondaryFields'] as List<dynamic>?)
          ?.map((e) => SecondaryField.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalInfoFields: (json['additionalInfoFields'] as List<dynamic>?)
          ?.map((e) => AdditionalField.fromJson(e as Map<String, dynamic>))
          .toList(),
      auxiliaryFields: (json['auxiliaryFields'] as List<dynamic>?)
          ?.map((e) => AuxiliaryField.fromJson(e as Map<String, dynamic>))
          .toList(),
      backFields: (json['backFields'] as List<dynamic>?)
          ?.map((e) => BackField.fromJson(e as Map<String, dynamic>))
          .toList(),
      headerFields: (json['headerFields'] as List<dynamic>?)
          ?.map((e) => HeaderField.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      organizationName: json['organizationName'] as String,
      serialNumber: json['serialNumber'] as String,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      relevantDate: json['relevantDate'] == null
          ? null
          : DateTime.parse(json['relevantDate'] as String),
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => WalletCardLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WalletCardMetadataToJson(WalletCardMetadata instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'primaryFields': instance.primaryFields,
      'secondaryFields': instance.secondaryFields,
      'additionalInfoFields': instance.additionalInfoFields,
      'auxiliaryFields': instance.auxiliaryFields,
      'backFields': instance.backFields,
      'headerFields': instance.headerFields,
      'description': instance.description,
      'organizationName': instance.organizationName,
      'serialNumber': instance.serialNumber,
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'relevantDate': instance.relevantDate?.toIso8601String(),
      'locations': instance.locations,
    };

WalletCardVisuals _$WalletCardVisualsFromJson(Map<String, dynamic> json) =>
    WalletCardVisuals(
      backgroundColor:
          WalletCardVisuals._colorFromJson(json['backgroundColor'] as String?),
      foregroundColor:
          WalletCardVisuals._colorFromJson(json['foregroundColor'] as String?),
      labelColor:
          WalletCardVisuals._colorFromJson(json['labelColor'] as String?),
      logoText: json['logoText'] as String?,
      images: (json['images'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$WalletCardVisualsToJson(WalletCardVisuals instance) =>
    <String, dynamic>{
      'backgroundColor':
          WalletCardVisuals._colorToJson(instance.backgroundColor),
      'foregroundColor':
          WalletCardVisuals._colorToJson(instance.foregroundColor),
      'labelColor': WalletCardVisuals._colorToJson(instance.labelColor),
      'logoText': instance.logoText,
      'images': instance.images,
    };

WalletCardLocation _$WalletCardLocationFromJson(Map<String, dynamic> json) =>
    WalletCardLocation(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      relevantText: json['relevantText'] as String?,
    );

Map<String, dynamic> _$WalletCardLocationToJson(WalletCardLocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'altitude': instance.altitude,
      'relevantText': instance.relevantText,
    };

PrimaryField _$PrimaryFieldFromJson(Map<String, dynamic> json) => PrimaryField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$PrimaryFieldToJson(PrimaryField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
    };

SecondaryField _$SecondaryFieldFromJson(Map<String, dynamic> json) =>
    SecondaryField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$SecondaryFieldToJson(SecondaryField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
    };

AdditionalField _$AdditionalFieldFromJson(Map<String, dynamic> json) =>
    AdditionalField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$AdditionalFieldToJson(AdditionalField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
    };

AuxiliaryField _$AuxiliaryFieldFromJson(Map<String, dynamic> json) =>
    AuxiliaryField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
      row: (json['row'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AuxiliaryFieldToJson(AuxiliaryField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
      'row': instance.row,
    };

BackField _$BackFieldFromJson(Map<String, dynamic> json) => BackField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$BackFieldToJson(BackField instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
    };

HeaderField _$HeaderFieldFromJson(Map<String, dynamic> json) => HeaderField(
      key: json['key'] as String,
      value: json['value'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$HeaderFieldToJson(HeaderField instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'label': instance.label,
    };
