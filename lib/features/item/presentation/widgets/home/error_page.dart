import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/utils/colors.dart';

class ErrorPage extends StatelessWidget {
  final VoidCallback onRetry;

  const ErrorPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.sentiment_very_dissatisfied,
                size: 80,
                color: PersonalizedColor.mainColor,
              ),
              const SizedBox(height: 16),
              const Text(
                "Oops, something went wrong!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "An error occurred while loading the data. Please try again later.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              PersonalizedLargeGreenButton(
                  onPressed: onRetry,
                  text: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Retry",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
