class Operation{
  final int id;
  final DateTime operationDate;
  final double amount;
  final String type;
  final String description;

  Operation({
      required this.id,
      required this.operationDate,
      required this.amount,
      required this.type,
      required this.description,
    });
}