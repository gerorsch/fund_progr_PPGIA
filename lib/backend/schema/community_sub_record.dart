import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunitySubRecord extends FirestoreRecord {
  CommunitySubRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "community_name" field.
  String? _communityName;
  String get communityName => _communityName ?? '';
  bool hasCommunityName() => _communityName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "posts" field.
  List<String>? _posts;
  List<String> get posts => _posts ?? const [];
  bool hasPosts() => _posts != null;

  // "members" field.
  List<String>? _members;
  List<String> get members => _members ?? const [];
  bool hasMembers() => _members != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "community_image" field.
  String? _communityImage;
  String get communityImage => _communityImage ?? '';
  bool hasCommunityImage() => _communityImage != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "community_id" field.
  String? _communityId;
  String get communityId => _communityId ?? '';
  bool hasCommunityId() => _communityId != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _communityName = snapshotData['community_name'] as String?;
    _description = snapshotData['description'] as String?;
    _posts = getDataList(snapshotData['posts']);
    _members = getDataList(snapshotData['members']);
    _time = snapshotData['time'] as DateTime?;
    _createdBy = snapshotData['created_by'] as String?;
    _communityImage = snapshotData['community_image'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _communityId = snapshotData['community_id'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('community_sub')
          : FirebaseFirestore.instance.collectionGroup('community_sub');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('community_sub').doc(id);

  static Stream<CommunitySubRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunitySubRecord.fromSnapshot(s));

  static Future<CommunitySubRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunitySubRecord.fromSnapshot(s));

  static CommunitySubRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunitySubRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunitySubRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunitySubRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunitySubRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunitySubRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunitySubRecordData({
  String? communityName,
  String? description,
  DateTime? time,
  String? createdBy,
  String? communityImage,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? communityId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'community_name': communityName,
      'description': description,
      'time': time,
      'created_by': createdBy,
      'community_image': communityImage,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'community_id': communityId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunitySubRecordDocumentEquality
    implements Equality<CommunitySubRecord> {
  const CommunitySubRecordDocumentEquality();

  @override
  bool equals(CommunitySubRecord? e1, CommunitySubRecord? e2) {
    const listEquality = ListEquality();
    return e1?.communityName == e2?.communityName &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.posts, e2?.posts) &&
        listEquality.equals(e1?.members, e2?.members) &&
        e1?.time == e2?.time &&
        e1?.createdBy == e2?.createdBy &&
        e1?.communityImage == e2?.communityImage &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.communityId == e2?.communityId;
  }

  @override
  int hash(CommunitySubRecord? e) => const ListEquality().hash([
        e?.communityName,
        e?.description,
        e?.posts,
        e?.members,
        e?.time,
        e?.createdBy,
        e?.communityImage,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.communityId
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunitySubRecord;
}
