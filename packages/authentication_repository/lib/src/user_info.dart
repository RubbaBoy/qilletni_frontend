class UserSession {
  final String sessionId;
  final UserInfo userInfo;

  UserSession(this.sessionId, this.userInfo);
}

class UserInfo {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  UserInfo.stub()
      : id = 'stub-id',
        name = 'stub-name',
        email = 'stub@email.com',
        avatarUrl = 'foo.png';

  UserInfo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        email = json['email'],
        avatarUrl = json['avatarUrl'];

  @override
  String toString() {
    return 'UserInfo{id: $id, name: $name, email: $email, avatarUrl: $avatarUrl}';
  }
}
