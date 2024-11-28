import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "itemDetail" field.
  String? _itemDetail;
  String get itemDetail => _itemDetail ?? '';
  bool hasItemDetail() => _itemDetail != null;

  // "dateOfPost" field.
  DateTime? _dateOfPost;
  DateTime? get dateOfPost => _dateOfPost;
  bool hasDateOfPost() => _dateOfPost != null;

  // "itemPhoto" field.
  String? _itemPhoto;
  String get itemPhoto => _itemPhoto ?? '';
  bool hasItemPhoto() => _itemPhoto != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "userphoto" field.
  String? _userphoto;
  String get userphoto => _userphoto ?? '';
  bool hasUserphoto() => _userphoto != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _itemDetail = snapshotData['itemDetail'] as String?;
    _dateOfPost = snapshotData['dateOfPost'] as DateTime?;
    _itemPhoto = snapshotData['itemPhoto'] as String?;
    _state = snapshotData['state'] as String?;
    _category = snapshotData['category'] as String?;
    _username = snapshotData['username'] as String?;
    _userphoto = snapshotData['userphoto'] as String?;
    _userID = snapshotData['userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? itemName,
  String? itemDetail,
  DateTime? dateOfPost,
  String? itemPhoto,
  String? state,
  String? category,
  String? username,
  String? userphoto,
  String? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'itemDetail': itemDetail,
      'dateOfPost': dateOfPost,
      'itemPhoto': itemPhoto,
      'state': state,
      'category': category,
      'username': username,
      'userphoto': userphoto,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.itemDetail == e2?.itemDetail &&
        e1?.dateOfPost == e2?.dateOfPost &&
        e1?.itemPhoto == e2?.itemPhoto &&
        e1?.state == e2?.state &&
        e1?.category == e2?.category &&
        e1?.username == e2?.username &&
        e1?.userphoto == e2?.userphoto &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.itemName,
        e?.itemDetail,
        e?.dateOfPost,
        e?.itemPhoto,
        e?.state,
        e?.category,
        e?.username,
        e?.userphoto,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
