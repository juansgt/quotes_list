import 'package:flutter/material.dart';
import 'package:quotes_list/card_service.dart';
import 'package:quotes_list/i_card_service.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  
  ICardService cardService = CardService();

  runApp(MaterialApp(
    home: QuoteList(cardService: cardService),
  ));
}

class QuoteList extends StatefulWidget {

  final ICardService cardService;
  QuoteList({ required this.cardService });

  @override
  State createState() => QuoteListState(cardService: cardService);
}

class QuoteListState extends State<QuoteList> {

  final ICardService cardService;
  QuoteListState({ required this.cardService });

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genious'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple'),    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Awesome quotes',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => cardService.getCard(quote: quote)).toList(),
      ),
    );
  }
}