import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'thirdhand_smoke')
  String? get thirdhandSmoke;

  @BuiltValueField(wireName: 'second_smoke')
  String? get secondSmoke;

  @BuiltValueField(wireName: 'QnA_5')
  String? get qnA5;

  @BuiltValueField(wireName: 'QnA_5-1')
  String? get qnA51;

  @BuiltValueField(wireName: 'QnA_6')
  String? get qnA6;

  @BuiltValueField(wireName: 'QnA_7')
  String? get qnA7;

  @BuiltValueField(wireName: 'QnA_8')
  String? get qnA8;

  @BuiltValueField(wireName: 'QnA_9')
  String? get qnA9;

  @BuiltValueField(wireName: 'QnA_10')
  String? get qnA10;

  @BuiltValueField(wireName: 'QnA_11')
  String? get qnA11;

  int? get value;

  String? get result;

  DateTime? get timestamp;

  @BuiltValueField(wireName: 'K-CESD-R_1')
  int? get kCesdR1;

  @BuiltValueField(wireName: 'K-CESD-R_2')
  int? get kCesdR2;

  @BuiltValueField(wireName: 'K-CESD-R_3')
  int? get kCesdR3;

  @BuiltValueField(wireName: 'K-CESD-R_4')
  int? get kCesdR4;

  @BuiltValueField(wireName: 'K-CESD-R_5')
  int? get kCesdR5;

  @BuiltValueField(wireName: 'K-CESD-R_6')
  int? get kCesdR6;

  @BuiltValueField(wireName: 'K-CESD-R_7')
  int? get kCesdR7;

  @BuiltValueField(wireName: 'K-CESD-R_8')
  int? get kCesdR8;

  @BuiltValueField(wireName: 'K-CESD-R_9')
  int? get kCesdR9;

  @BuiltValueField(wireName: 'K-CESD-R_10')
  int? get kCesdR10;

  @BuiltValueField(wireName: 'K-CESD-R_11')
  int? get kCesdR11;

  @BuiltValueField(wireName: 'K-CESD-R_12')
  int? get kCesdR12;

  @BuiltValueField(wireName: 'K-CESD-R_13')
  int? get kCesdR13;

  @BuiltValueField(wireName: 'K-CESD-R_14')
  int? get kCesdR14;

  @BuiltValueField(wireName: 'K-CESD-R_15')
  int? get kCesdR15;

  @BuiltValueField(wireName: 'K-CESD-R_16')
  int? get kCesdR16;

  @BuiltValueField(wireName: 'K-CESD-R_17')
  int? get kCesdR17;

  @BuiltValueField(wireName: 'K-CESD-R_18')
  int? get kCesdR18;

  @BuiltValueField(wireName: 'K-CESD-R_19')
  int? get kCesdR19;

  @BuiltValueField(wireName: 'K-CESD-R_20')
  int? get kCesdR20;

  @BuiltValueField(wireName: 'QnA_6-1')
  String? get qnA61;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..thirdhandSmoke = ''
    ..secondSmoke = ''
    ..qnA5 = ''
    ..qnA51 = ''
    ..qnA6 = ''
    ..qnA7 = ''
    ..qnA8 = ''
    ..qnA9 = ''
    ..qnA10 = ''
    ..qnA11 = ''
    ..value = 0
    ..result = ''
    ..kCesdR1 = 0
    ..kCesdR2 = 0
    ..kCesdR3 = 0
    ..kCesdR4 = 0
    ..kCesdR5 = 0
    ..kCesdR6 = 0
    ..kCesdR7 = 0
    ..kCesdR8 = 0
    ..kCesdR9 = 0
    ..kCesdR10 = 0
    ..kCesdR11 = 0
    ..kCesdR12 = 0
    ..kCesdR13 = 0
    ..kCesdR14 = 0
    ..kCesdR15 = 0
    ..kCesdR16 = 0
    ..kCesdR17 = 0
    ..kCesdR18 = 0
    ..kCesdR19 = 0
    ..kCesdR20 = 0
    ..qnA61 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? thirdhandSmoke,
  String? secondSmoke,
  String? qnA5,
  String? qnA51,
  String? qnA6,
  String? qnA7,
  String? qnA8,
  String? qnA9,
  String? qnA10,
  String? qnA11,
  int? value,
  String? result,
  DateTime? timestamp,
  int? kCesdR1,
  int? kCesdR2,
  int? kCesdR3,
  int? kCesdR4,
  int? kCesdR5,
  int? kCesdR6,
  int? kCesdR7,
  int? kCesdR8,
  int? kCesdR9,
  int? kCesdR10,
  int? kCesdR11,
  int? kCesdR12,
  int? kCesdR13,
  int? kCesdR14,
  int? kCesdR15,
  int? kCesdR16,
  int? kCesdR17,
  int? kCesdR18,
  int? kCesdR19,
  int? kCesdR20,
  String? qnA61,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..thirdhandSmoke = thirdhandSmoke
        ..secondSmoke = secondSmoke
        ..qnA5 = qnA5
        ..qnA51 = qnA51
        ..qnA6 = qnA6
        ..qnA7 = qnA7
        ..qnA8 = qnA8
        ..qnA9 = qnA9
        ..qnA10 = qnA10
        ..qnA11 = qnA11
        ..value = value
        ..result = result
        ..timestamp = timestamp
        ..kCesdR1 = kCesdR1
        ..kCesdR2 = kCesdR2
        ..kCesdR3 = kCesdR3
        ..kCesdR4 = kCesdR4
        ..kCesdR5 = kCesdR5
        ..kCesdR6 = kCesdR6
        ..kCesdR7 = kCesdR7
        ..kCesdR8 = kCesdR8
        ..kCesdR9 = kCesdR9
        ..kCesdR10 = kCesdR10
        ..kCesdR11 = kCesdR11
        ..kCesdR12 = kCesdR12
        ..kCesdR13 = kCesdR13
        ..kCesdR14 = kCesdR14
        ..kCesdR15 = kCesdR15
        ..kCesdR16 = kCesdR16
        ..kCesdR17 = kCesdR17
        ..kCesdR18 = kCesdR18
        ..kCesdR19 = kCesdR19
        ..kCesdR20 = kCesdR20
        ..qnA61 = qnA61,
    ),
  );

  return firestoreData;
}
