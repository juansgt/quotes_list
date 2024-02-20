import 'package:flutter/material.dart';
import 'package:quotes_list/i_card_service.dart';
import 'package:quotes_list/quote.dart';
import 'package:quotes_list/quote_card.dart';

class CardService implements ICardService {
  @override
  StatelessWidget getCard({ required Quote quote }) {
    return QuoteCard(quote: quote);
  }
}