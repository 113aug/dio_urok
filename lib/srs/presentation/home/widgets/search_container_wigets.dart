import 'package:flutter/material.dart';

class Search_container_wigets extends StatelessWidget {
  const Search_container_wigets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold)),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      height: 60,
      width: double.infinity,
    );
  }
}
