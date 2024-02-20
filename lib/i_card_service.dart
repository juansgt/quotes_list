import 'package:flutter/material.dart';
import 'package:quotes_list/quote.dart';

abstract interface class ICardService {
  StatelessWidget getCard({ required Quote quote });
}