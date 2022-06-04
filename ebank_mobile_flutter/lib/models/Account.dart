import 'Customer.dart';

class Account {
  final String type;
  final String id;
  final double balance;
  final DateTime createdAt;
  final String status;
  final Customer customer;
  final double interestRate;
  final double overDraft;

  Account(
      this.id,
      this.balance,
      this.createdAt,
      this.status,
      this.customer,
      this.interestRate,
      this.overDraft,
      this.type, );
  }