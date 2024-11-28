import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _editreportform = prefs
              .getStringList('ff_editreportform')
              ?.map((path) => path.ref)
              .toList() ??
          _editreportform;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _SearchActive = false;
  bool get SearchActive => _SearchActive;
  set SearchActive(bool value) {
    _SearchActive = value;
  }

  bool _searchActive2 = false;
  bool get searchActive2 => _searchActive2;
  set searchActive2(bool value) {
    _searchActive2 = value;
  }

  List<DocumentReference> _editreportform = [];
  List<DocumentReference> get editreportform => _editreportform;
  set editreportform(List<DocumentReference> value) {
    _editreportform = value;
    prefs.setStringList('ff_editreportform', value.map((x) => x.path).toList());
  }

  void addToEditreportform(DocumentReference value) {
    editreportform.add(value);
    prefs.setStringList(
        'ff_editreportform', _editreportform.map((x) => x.path).toList());
  }

  void removeFromEditreportform(DocumentReference value) {
    editreportform.remove(value);
    prefs.setStringList(
        'ff_editreportform', _editreportform.map((x) => x.path).toList());
  }

  void removeAtIndexFromEditreportform(int index) {
    editreportform.removeAt(index);
    prefs.setStringList(
        'ff_editreportform', _editreportform.map((x) => x.path).toList());
  }

  void updateEditreportformAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    editreportform[index] = updateFn(_editreportform[index]);
    prefs.setStringList(
        'ff_editreportform', _editreportform.map((x) => x.path).toList());
  }

  void insertAtIndexInEditreportform(int index, DocumentReference value) {
    editreportform.insert(index, value);
    prefs.setStringList(
        'ff_editreportform', _editreportform.map((x) => x.path).toList());
  }

  String _userChat = '';
  String get userChat => _userChat;
  set userChat(String value) {
    _userChat = value;
  }

  final _userDocQueryManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> userDocQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _userDocQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUserDocQueryCache() => _userDocQueryManager.clear();
  void clearUserDocQueryCacheKey(String? uniqueKey) =>
      _userDocQueryManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
