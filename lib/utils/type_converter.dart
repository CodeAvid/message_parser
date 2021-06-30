import 'package:message_parser/index.dart';

String toString(AccountType? type) {
  switch (type) {
    case AccountType.Savings:
      return 'Savings';
    case AccountType.Current:
      return 'Current';
    case AccountType.Credit:
      return 'Credit';
    case AccountType.Default:
    default:
      return 'Default';
  }
}

AccountType toAccountType(String value) {
  switch (value) {
    case 'Savings':
      return AccountType.Savings;
    case 'Current':
      return AccountType.Current;
    case 'Credit':
      return AccountType.Credit;
    case 'Default':
    default:
      return AccountType.Default;
  }
}