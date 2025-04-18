// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialAudioMessageType _$PartialAudioMessageTypeFromJson(
  Map<String, dynamic> json,
) => PartialAudioMessageType(
  duration: Duration(microseconds: (json['duration'] as num).toInt()),
  metadata: json['metadata'] as Map<String, dynamic>?,
  mimeType: json['mimeType'] as String?,
  name: json['name'] as String,
  repliedMessage:
      json['repliedMessage'] == null
          ? null
          : Message.fromJson(json['repliedMessage'] as Map<String, dynamic>),
  size: json['size'] as num,
  uri: json['uri'] as String,
  waveForm:
      (json['waveForm'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
);

Map<String, dynamic> _$PartialAudioMessageTypeToJson(
  PartialAudioMessageType instance,
) => <String, dynamic>{
  'duration': instance.duration.inMicroseconds,
  'metadata': instance.metadata,
  'mimeType': instance.mimeType,
  'name': instance.name,
  'repliedMessage': instance.repliedMessage,
  'size': instance.size,
  'uri': instance.uri,
  'waveForm': instance.waveForm,
};
