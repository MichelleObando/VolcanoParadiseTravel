import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_usuario" field.
  DocumentReference? _idUsuario;
  DocumentReference? get idUsuario => _idUsuario;
  bool hasIdUsuario() => _idUsuario != null;

  // "id_tour" field.
  DocumentReference? _idTour;
  DocumentReference? get idTour => _idTour;
  bool hasIdTour() => _idTour != null;

  // "id_hotel" field.
  DocumentReference? _idHotel;
  DocumentReference? get idHotel => _idHotel;
  bool hasIdHotel() => _idHotel != null;

  // "cantidadPersonas" field.
  int? _cantidadPersonas;
  int get cantidadPersonas => _cantidadPersonas ?? 0;
  bool hasCantidadPersonas() => _cantidadPersonas != null;

  // "precioTotal" field.
  double? _precioTotal;
  double get precioTotal => _precioTotal ?? 0.0;
  bool hasPrecioTotal() => _precioTotal != null;

  // "fechaReserva" field.
  DateTime? _fechaReserva;
  DateTime? get fechaReserva => _fechaReserva;
  bool hasFechaReserva() => _fechaReserva != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _idUsuario = snapshotData['id_usuario'] as DocumentReference?;
    _idTour = snapshotData['id_tour'] as DocumentReference?;
    _idHotel = snapshotData['id_hotel'] as DocumentReference?;
    _cantidadPersonas = castToType<int>(snapshotData['cantidadPersonas']);
    _precioTotal = castToType<double>(snapshotData['precioTotal']);
    _fechaReserva = snapshotData['fechaReserva'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? idUsuario,
  DocumentReference? idTour,
  DocumentReference? idHotel,
  int? cantidadPersonas,
  double? precioTotal,
  DateTime? fechaReserva,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_usuario': idUsuario,
      'id_tour': idTour,
      'id_hotel': idHotel,
      'cantidadPersonas': cantidadPersonas,
      'precioTotal': precioTotal,
      'fechaReserva': fechaReserva,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.idTour == e2?.idTour &&
        e1?.idHotel == e2?.idHotel &&
        e1?.cantidadPersonas == e2?.cantidadPersonas &&
        e1?.precioTotal == e2?.precioTotal &&
        e1?.fechaReserva == e2?.fechaReserva &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.idUsuario,
        e?.idTour,
        e?.idHotel,
        e?.cantidadPersonas,
        e?.precioTotal,
        e?.fechaReserva,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
