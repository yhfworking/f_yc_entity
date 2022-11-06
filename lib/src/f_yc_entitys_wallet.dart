class FYcEntitysWallet {
  final int? balance;
  final String? money;

  const FYcEntitysWallet({
    this.balance,
    this.money,
  });

  factory FYcEntitysWallet.fromJson(Map<String, dynamic> json) =>
      FYcEntitysWallet(
        balance: json["balance"] ?? 0,
        money: json["money"] ?? '',
      );

  Map<String, dynamic> toJson() => {"balance": balance, "money": money};
}
