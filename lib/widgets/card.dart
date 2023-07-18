import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final int nclaims;
  final VoidCallback? onTap;

  const CustomCard(
      {super.key,
        required this.imagePath,
        required this.text,
        required this.nclaims,
        this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 165,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 18, bottom: 5, right: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: TextStyle(fontSize: 16.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      if (nclaims > 0)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.connect_without_contact,
                              size: 15,
                              color: Colors.yellow,
                            ),
                            Text(
                              " $nclaims new claim${nclaims > 1 ? "s" : ""}",
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.yellow),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            bottom: -1,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
