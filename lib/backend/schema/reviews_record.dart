import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_usuario" field.
  DocumentReference? _idUsuario;
  DocumentReference? get idUsuario => _idUsuario;
  bool hasIdUsuario() => _idUsuario != null;

  // "idReferenciaVolcanes" field.
  DocumentReference? _idReferenciaVolcanes;
  DocumentReference? get idReferenciaVolcanes => _idReferenciaVolcanes;
  bool hasIdReferenciaVolcanes() => _idReferenciaVolcanes != null;

  // "calificacion" field.
  double? _calificacion;
  double get calificacion => _calificacion ?? 0.0;
  bool hasCalificacion() => _calificacion != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  void _initializeFields() {
    _idUsuario = snapshotData['id_usuario'] as DocumentReference?;
    _idReferenciaVolcanes =
        snapshotData['idReferenciaVolcanes'] as DocumentReference?;
    _calificacion = castToType<double>(snapshotData['calificacion']);
    _comentario = snapshotData['comentario'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  DocumentReference? idUsuario,
  DocumentReference? idReferenciaVolcanes,
  double? calificacion,
  String? comentario,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_usuario': idUsuario,
      'idReferenciaVolcanes': idReferenciaVolcanes,
      'calificacion': calificacion,
      'comentario': comentario,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.idReferenciaVolcanes == e2?.idReferenciaVolcanes &&
        e1?.calificacion == e2?.calificacion &&
        e1?.comentario == e2?.comentario &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.idUsuario,
        e?.idReferenciaVolcanes,
        e?.calificacion,
        e?.comentario,
        e?.fecha
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
