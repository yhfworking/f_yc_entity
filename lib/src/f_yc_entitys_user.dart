class FYcEntitysUser {
  final String? userId;
  final String? nickname;
  final String? avatar;

  const FYcEntitysUser({
    this.userId,
    this.nickname,
    this.avatar,
  });

  factory FYcEntitysUser.fromJson(Map<String, dynamic> json) => FYcEntitysUser(
        userId: json["userId"] ?? '',
        nickname: json["nickname"] ?? '',
        avatar: json["avatar"] ?? '',
      );

  Map<String, dynamic> toJson() =>
      {"userId": userId, "nickname": nickname, "avatar": avatar};
}
