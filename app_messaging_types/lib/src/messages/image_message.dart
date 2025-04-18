import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../message.dart';
import '../user.dart';
import 'partial_image.dart';

part 'image_message.g.dart';

/// A class that represents image message.
@JsonSerializable()
@immutable
abstract class ImageMessageType extends Message {
  /// Creates an image message.
  const ImageMessageType._({
    required super.author,
    super.createdAt,
    this.height,
    required super.id,
    super.metadata,
    required this.name,
    super.remoteId,
    super.repliedMessage,
    super.roomId,
    super.showStatus,
    required this.size,
    super.status,
    MessageType? type,
    super.updatedAt,
    required this.uri,
    this.width,
  }) : super(type: type ?? MessageType.image);

  const factory ImageMessageType({
    required ChatUser author,
    int? createdAt,
    double? height,
    required String id,
    Map<String, dynamic>? metadata,
    required String name,
    String? remoteId,
    Message? repliedMessage,
    String? roomId,
    bool? showStatus,
    required num size,
    Status? status,
    MessageType? type,
    int? updatedAt,
    required String uri,
    double? width,
  }) = _ImageMessageType;

  /// Creates an image message from a map (decoded JSON).
  factory ImageMessageType.fromJson(Map<String, dynamic> json) =>
      _$ImageMessageTypeFromJson(json);

  /// Creates a full image message from a partial one.
  factory ImageMessageType.fromPartial({
    required ChatUser author,
    int? createdAt,
    required String id,
    required PartialImageMessageType partialImage,
    String? remoteId,
    String? roomId,
    bool? showStatus,
    Status? status,
    int? updatedAt,
  }) => _ImageMessageType(
    author: author,
    createdAt: createdAt,
    height: partialImage.height,
    id: id,
    metadata: partialImage.metadata,
    name: partialImage.name,
    remoteId: remoteId,
    repliedMessage: partialImage.repliedMessage,
    roomId: roomId,
    showStatus: showStatus,
    size: partialImage.size,
    status: status,
    type: MessageType.image,
    updatedAt: updatedAt,
    uri: partialImage.uri,
    width: partialImage.width,
  );

  /// Image height in pixels.
  final double? height;

  /// The name of the image.
  final String name;

  /// Size of the image in bytes.
  final num size;

  /// The image source (either a remote URL or a local resource).
  final String uri;

  /// Image width in pixels.
  final double? width;

  /// Equatable props.
  @override
  List<Object?> get props => [
    author,
    createdAt,
    height,
    id,
    metadata,
    name,
    remoteId,
    repliedMessage,
    roomId,
    showStatus,
    size,
    status,
    updatedAt,
    uri,
    width,
  ];

  @override
  Message copyWith({
    ChatUser? author,
    int? createdAt,
    double? height,
    String? id,
    Map<String, dynamic>? metadata,
    String? name,
    String? remoteId,
    Message? repliedMessage,
    String? roomId,
    bool? showStatus,
    num? size,
    Status? status,
    int? updatedAt,
    String? uri,
    double? width,
  });

  /// Converts an image message to the map representation, encodable to JSON.
  @override
  Map<String, dynamic> toJson() => _$ImageMessageTypeToJson(this);
}

/// A utility class to enable better copyWith.
class _ImageMessageType extends ImageMessageType {
  const _ImageMessageType({
    required super.author,
    super.createdAt,
    super.height,
    required super.id,
    super.metadata,
    required super.name,
    super.remoteId,
    super.repliedMessage,
    super.roomId,
    super.showStatus,
    required super.size,
    super.status,
    super.type,
    super.updatedAt,
    required super.uri,
    super.width,
  }) : super._();

  @override
  Message copyWith({
    ChatUser? author,
    dynamic createdAt = _Unset,
    dynamic height = _Unset,
    String? id,
    dynamic metadata = _Unset,
    String? name,
    dynamic remoteId = _Unset,
    dynamic repliedMessage = _Unset,
    dynamic roomId,
    dynamic showStatus = _Unset,
    num? size,
    dynamic status = _Unset,
    dynamic updatedAt = _Unset,
    String? uri,
    dynamic width = _Unset,
  }) => _ImageMessageType(
    author: author ?? this.author,
    createdAt: createdAt == _Unset ? this.createdAt : createdAt as int?,
    height: height == _Unset ? this.height : height as double?,
    id: id ?? this.id,
    metadata:
        metadata == _Unset ? this.metadata : metadata as Map<String, dynamic>?,
    name: name ?? this.name,
    remoteId: remoteId == _Unset ? this.remoteId : remoteId as String?,
    repliedMessage:
        repliedMessage == _Unset
            ? this.repliedMessage
            : repliedMessage as Message?,
    roomId: roomId == _Unset ? this.roomId : roomId as String?,
    showStatus: showStatus == _Unset ? this.showStatus : showStatus as bool?,
    size: size ?? this.size,
    status: status == _Unset ? this.status : status as Status?,
    updatedAt: updatedAt == _Unset ? this.updatedAt : updatedAt as int?,
    uri: uri ?? this.uri,
    width: width == _Unset ? this.width : width as double?,
  );
}

class _Unset {}
