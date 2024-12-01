import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String text;
  String direction;
  String? image;

  TextWidget({required this.text, required this.direction, this.image});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = screenWidth * 0.8;

    if (direction == 'left') {
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color(0xFF168C4B),
              ),
              child: image == null ?
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ) : Image.asset(
                image!,
              )
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color(0xD5322A2A),
              ),
              child: image == null
                  ? Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ) : Image.asset(
                image!,
              ),
            ),
          ),
        ],
      );
    }
  }
}
