import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Color(0XFFF9F1BE),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
=======
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF9F1BE),
          borderRadius: BorderRadius.circular(50), // Radius 50
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            filled: true,
            fillColor: Colors.transparent, 
            border: OutlineInputBorder(
              borderSide: BorderSide.none, 
              borderRadius: BorderRadius.circular(50), 
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none, 
              borderRadius: BorderRadius.circular(50), 
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none, 
              borderRadius: BorderRadius.circular(50), 
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
>>>>>>> dd430eecf6348505757ab1a7134ebd547f08921b
          ),
        ),
      ),
    );
  }
}