import 'package:authentication_repository/src/store/session_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveSessionStore extends SessionStore {

  static const _sessionKey = 'session';
  static const _boxName = 'session';

  final Box<String> _box;

  HiveSessionStore._(this._box);

  static Future<HiveSessionStore> create() async {
    await Hive.initFlutter();
    return HiveSessionStore._(await Hive.openBox(_boxName));
  }

  @override
  String getSessionId() {
    return _box.get(_sessionKey, defaultValue: '')!;
  }

  @override
  bool hasSessionId() {
    var sessionId = _box.get(_sessionKey);
    return sessionId?.isNotEmpty ?? false;
  }

  @override
  void clearSessionId() {
    _box.put(_sessionKey, '');
  }

  @override
  void storeSessionId(String sessionId) {
    _box.put(_sessionKey, sessionId);
  }

}
