// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextMessageType _$TextMessageTypeFromJson(Map<String, dynamic> json) =>
    TextMessageType(
      author: ChatUser.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: (json['createdAt'] as num?)?.toInt(),
      id: json['id'] as String,
      metadata: json['metadata'] as Map<String, dynamic>?,
      previewData:
          json['previewData'] == null
              ? null
              : LinkPreviewData.fromJson(
                json['previewData'] as Map<String, dynamic>,
              ),
      remoteId: json['remoteId'] as String?,
      repliedMessage:
          json['repliedMessage'] == null
              ? null
              : Message.fromJson(
                json['repliedMessage'] as Map<String, dynamic>,
              ),
      roomId: json['roomId'] as String?,
      showStatus: json['showStatus'] as bool?,
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      text: json['text'] as String,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      updatedAt: (json['updatedAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TextMessageTypeToJson(TextMessageType instance) =>
    <String, dynamic>{
      'author': instance.author,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'metadata': instance.metadata,
      'remoteId': instance.remoteId,
      'repliedMessage': instance.repliedMessage,
      'roomId': instance.roomId,
      'showStatus': instance.showStatus,
      'status': _$StatusEnumMap[instance.status],
      'type': _$MessageTypeEnumMap[instance.type]!,
      'updatedAt': instance.updatedAt,
      'previewData': instance.previewData,
      'text': instance.text,
    };

const _$StatusEnumMap = {
  Status.delivered: 'delivered',
  Status.error: 'error',
  Status.seen: 'seen',
  Status.sending: 'sending',
  Status.sent: 'sent',
};

const _$MessageTypeEnumMap = {
  MessageType.audio: 'audio',
  MessageType.custom: 'custom',
  MessageType.file: 'file',
  MessageType.image: 'image',
  MessageType.system: 'system',
  MessageType.text: 'text',
  MessageType.unsupported: 'unsupported',
  MessageType.video: 'video',
};
