class BalanceInfo {
  final String icon;
  final String balanceType;
  final String balance;
  final String validity;

  BalanceInfo({
    required this.icon,
    required this.balanceType,
    required this.balance,
    required this.validity,
  });

  static BalanceInfo fromJson(json) => BalanceInfo(
        icon: json['icon'],
        balanceType: json['balanceType'],
        balance: json['balance'],
        validity: json['validity'],
      );
}
