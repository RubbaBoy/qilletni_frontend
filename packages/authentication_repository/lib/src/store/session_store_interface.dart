abstract class SessionStore {

  void storeSessionId(String sessionId);

  bool hasSessionId();

  void clearSessionId();

  String getSessionId();

}
