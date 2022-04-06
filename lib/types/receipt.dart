class Receipt {
  final int? outItemId;
  final int outItemCount;
  final int outCoinCount;
  final int? inItemId;
  final int inItemCount;
  final int inCoinCount;

  const Receipt({
    required this.outItemId,
    required this.outItemCount,
    required this.outCoinCount,
    required this.inItemId,
    required this.inItemCount,
    required this.inCoinCount,
  });
}
