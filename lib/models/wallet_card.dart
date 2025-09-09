import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'wallet_card.g.dart';

/// Unified wallet card model that supports both Apple Wallet and Google Wallet
@JsonSerializable()
class WalletCard extends Equatable {
  /// Unique identifier for the card
  final String id;

  /// Card type (store card, event ticket, boarding pass, etc.)
  final WalletCardType type;

  /// Platform-specific data
  final Map<String, dynamic> platformData;

  /// Card metadata
  final WalletCardMetadata metadata;

  /// Visual elements
  final WalletCardVisuals? visuals;

  /// Associated file (if any)
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? file;

  const WalletCard({
    required this.id,
    required this.type,
    required this.platformData,
    required this.metadata,
    this.visuals,
    this.file,
  });

  factory WalletCard.fromJson(Map<String, dynamic> json) =>
      _$WalletCardFromJson(json);
  Map<String, dynamic> toJson() => _$WalletCardToJson(this);

  @override
  String toString() {
    return 'WalletCard{\n'
        '  id: $id,\n'
        '  type: ${type.name},\n'
        '  metadata: $metadata,\n'
        '  visuals: $visuals,\n'
        '  platformData: $platformData,\n'
        '  file: ${file?.path ?? 'null'},\n'
        '}';
  }

  @override
  List<Object?> get props =>
      [id, type, platformData, metadata, visuals, file?.path];
}

/// Card types supported by both platforms
enum WalletCardType {
  @JsonValue('storeCard')
  storeCard,
  @JsonValue('eventTicket')
  eventTicket,
  @JsonValue('boardingPass')
  boardingPass,
  @JsonValue('coupon')
  coupon,
  @JsonValue('generic')
  generic,
  @JsonValue('transit')
  transit,
  @JsonValue('loyalty')
  loyalty,
}

/// Card metadata
@JsonSerializable()
class WalletCardMetadata extends Equatable {
  final String title;
  final String? subtitle;
  final List<PrimaryField>? primaryFields;
  final List<SecondaryField>? secondaryFields;
  final List<AdditionalField>? additionalInfoFields;
  final List<AuxiliaryField>? auxiliaryFields;
  final List<BackField>? backFields;
  final List<HeaderField>? headerFields;
  final String? description;
  final String organizationName;
  final String serialNumber;
  final DateTime? expirationDate;
  final DateTime? relevantDate;
  final List<WalletCardLocation>? locations;

  const WalletCardMetadata({
    required this.title,
    this.subtitle,
    this.primaryFields,
    this.secondaryFields,
    this.additionalInfoFields,
    this.auxiliaryFields,
    this.backFields,
    this.headerFields,
    this.description,
    required this.organizationName,
    required this.serialNumber,
    this.expirationDate,
    this.relevantDate,
    this.locations,
  });

  factory WalletCardMetadata.fromJson(Map<String, dynamic> json) =>
      _$WalletCardMetadataFromJson(json);
  Map<String, dynamic> toJson() => _$WalletCardMetadataToJson(this);

  @override
  List<Object?> get props => [
        title,
        subtitle,
        primaryFields,
        secondaryFields,
        additionalInfoFields,
        auxiliaryFields,
        backFields,
        headerFields,
        description,
        organizationName,
        serialNumber,
        expirationDate,
        relevantDate,
        locations,
      ];
}

/// Visual elements for the card
@JsonSerializable()
class WalletCardVisuals extends Equatable {
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  final Color? backgroundColor;
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  final Color? foregroundColor;
  @JsonKey(fromJson: _colorFromJson, toJson: _colorToJson)
  final Color? labelColor;
  final String? logoText;
  final Map<String, String>? images; // image type -> file path

  const WalletCardVisuals({
    this.backgroundColor,
    this.foregroundColor,
    this.labelColor,
    this.logoText,
    this.images,
  });

  factory WalletCardVisuals.fromJson(Map<String, dynamic> json) =>
      _$WalletCardVisualsFromJson(json);
  Map<String, dynamic> toJson() => _$WalletCardVisualsToJson(this);

  static Color? _colorFromJson(String? colorString) {
    if (colorString == null) return null;
    if (colorString.startsWith('#')) {
      return Color(int.parse(colorString.substring(1), radix: 16) + 0xFF000000);
    }
    if (colorString.startsWith('rgb(')) {
      final values =
          colorString.substring(4, colorString.length - 1).split(',');
      return Color.fromRGBO(
        int.parse(values[0].trim()),
        int.parse(values[1].trim()),
        int.parse(values[2].trim()),
        1.0,
      );
    }
    return null;
  }

  static String? _colorToJson(Color? color) {
    if (color == null) return null;
    return '#${color.toARGB32().toRadixString(16).substring(2).toUpperCase()}';
  }

  @override
  List<Object?> get props =>
      [backgroundColor, foregroundColor, labelColor, logoText, images];
}

/// Location information for the card
@JsonSerializable()
class WalletCardLocation extends Equatable {
  final double latitude;
  final double longitude;
  final double? altitude;
  final String? relevantText;

  const WalletCardLocation({
    required this.latitude,
    required this.longitude,
    this.altitude,
    this.relevantText,
  });

  factory WalletCardLocation.fromJson(Map<String, dynamic> json) =>
      _$WalletCardLocationFromJson(json);
  Map<String, dynamic> toJson() => _$WalletCardLocationToJson(this);

  @override
  List<Object?> get props => [latitude, longitude, altitude, relevantText];
}

@JsonSerializable()
class PrimaryField extends Equatable {
  final String key;
  final String label;
  final String value;

  const PrimaryField({
    required this.key,
    required this.label,
    required this.value,
  });

  factory PrimaryField.fromJson(Map<String, dynamic> json) =>
      _$PrimaryFieldFromJson(json);
  Map<String, dynamic> toJson() => _$PrimaryFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}

@JsonSerializable()
class SecondaryField extends Equatable {
  final String key;
  final String label;
  final String value;

  const SecondaryField({
    required this.key,
    required this.label,
    required this.value,
  });

  factory SecondaryField.fromJson(Map<String, dynamic> json) =>
      _$SecondaryFieldFromJson(json);
  Map<String, dynamic> toJson() => _$SecondaryFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}

@JsonSerializable()
class AdditionalField extends Equatable {
  final String key;
  final String label;
  final String value;

  const AdditionalField({
    required this.key,
    required this.label,
    required this.value,
  });

  factory AdditionalField.fromJson(Map<String, dynamic> json) =>
      _$AdditionalFieldFromJson(json);
  Map<String, dynamic> toJson() => _$AdditionalFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}

@JsonSerializable()
class AuxiliaryField extends Equatable {
  final String key;
  final String label;
  final String value;
  final int? row;

  const AuxiliaryField({
    required this.key,
    required this.label,
    required this.value,
    this.row,
  });

  factory AuxiliaryField.fromJson(Map<String, dynamic> json) =>
      _$AuxiliaryFieldFromJson(json);
  Map<String, dynamic> toJson() => _$AuxiliaryFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}

@JsonSerializable()
class BackField extends Equatable {
  final String key;
  final String label;
  final String value;

  const BackField({
    required this.key,
    required this.label,
    required this.value,
  });

  factory BackField.fromJson(Map<String, dynamic> json) =>
      _$BackFieldFromJson(json);
  Map<String, dynamic> toJson() => _$BackFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}

@JsonSerializable()
class HeaderField extends Equatable {
  final String key;
  final String label;
  final String value;

  const HeaderField({
    required this.key,
    required this.label,
    required this.value,
  });

  factory HeaderField.fromJson(Map<String, dynamic> json) =>
      _$HeaderFieldFromJson(json);
  Map<String, dynamic> toJson() => _$HeaderFieldToJson(this);

  @override
  List<Object?> get props => [key, label, value];
}
