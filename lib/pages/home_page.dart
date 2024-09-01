import 'package:flutter/material.dart';
import 'package:flutter_stripe_tutorial/services/stripe_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Stripe Payment",
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                StripeServices.instance.makePayment();
              },
              color: Colors.amber,
              child: const Text(
                "Purchase",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
