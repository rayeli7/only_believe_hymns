import 'package:flutter/material.dart';

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hymn Book",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: const <Widget>[
            Text(
              "Only Believe",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: const [
            Text(
              "1000 Hymns",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "For The Bride Of Christ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            )
          ],
        ),
      ],
    );
  }
}
