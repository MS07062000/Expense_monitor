import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expense_monitor/models/entry.dart';

double totalExpense(List<DocumentSnapshot> snapshots) => snapshots
    .where((el) => el['type'] == EntryType.EXPENSE.index)
    .fold(0.0, (prev, next) => prev + next['amount']);

double totalIncome(List<DocumentSnapshot> snapshots) => snapshots
    .where((el) => el['type'] == EntryType.INCOME.index)
    .fold(0.0, (prev, next) => prev + next['amount']);
