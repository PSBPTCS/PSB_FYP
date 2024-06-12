import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoRecord extends FirestoreRecord {
  VideoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "video_tittle" field.
  String? _videoTittle;
  String get videoTittle => _videoTittle ?? '';
  bool hasVideoTittle() => _videoTittle != null;

  // "video_duration" field.
  int? _videoDuration;
  int get videoDuration => _videoDuration ?? 0;
  bool hasVideoDuration() => _videoDuration != null;

  // "video_creator" field.
  String? _videoCreator;
  String get videoCreator => _videoCreator ?? '';
  bool hasVideoCreator() => _videoCreator != null;

  // "video_description" field.
  String? _videoDescription;
  String get videoDescription => _videoDescription ?? '';
  bool hasVideoDescription() => _videoDescription != null;

  // "video_timer" field.
  DateTime? _videoTimer;
  DateTime? get videoTimer => _videoTimer;
  bool hasVideoTimer() => _videoTimer != null;

  // "like" field.
  int? _like;
  int get like => _like ?? 0;
  bool hasLike() => _like != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _videoTittle = snapshotData['video_tittle'] as String?;
    _videoDuration = castToType<int>(snapshotData['video_duration']);
    _videoCreator = snapshotData['video_creator'] as String?;
    _videoDescription = snapshotData['video_description'] as String?;
    _videoTimer = snapshotData['video_timer'] as DateTime?;
    _like = castToType<int>(snapshotData['like']);
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoRecord.fromSnapshot(s));

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoRecord.fromSnapshot(s));

  static VideoRecord fromSnapshot(DocumentSnapshot snapshot) => VideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoRecordData({
  String? videoTittle,
  int? videoDuration,
  String? videoCreator,
  String? videoDescription,
  DateTime? videoTimer,
  int? like,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'video_tittle': videoTittle,
      'video_duration': videoDuration,
      'video_creator': videoCreator,
      'video_description': videoDescription,
      'video_timer': videoTimer,
      'like': like,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoRecordDocumentEquality implements Equality<VideoRecord> {
  const VideoRecordDocumentEquality();

  @override
  bool equals(VideoRecord? e1, VideoRecord? e2) {
    return e1?.videoTittle == e2?.videoTittle &&
        e1?.videoDuration == e2?.videoDuration &&
        e1?.videoCreator == e2?.videoCreator &&
        e1?.videoDescription == e2?.videoDescription &&
        e1?.videoTimer == e2?.videoTimer &&
        e1?.like == e2?.like &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(VideoRecord? e) => const ListEquality().hash([
        e?.videoTittle,
        e?.videoDuration,
        e?.videoCreator,
        e?.videoDescription,
        e?.videoTimer,
        e?.like,
        e?.videoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is VideoRecord;
}
