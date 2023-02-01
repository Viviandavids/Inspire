import 'package:flutter/material.dart';
import '../data/quotes_repo.dart';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  List<String> quoteList = QuoteRepo().quotes;
  List<Color> colorsList = QuoteRepo().colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Motivational Quotes"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        itemCount: quoteList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.all(5),
            color: colorsList[index],
            child: Center(
                child: Text(
              quoteList[index],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
          );
        },
      ),
    );
  }
}
