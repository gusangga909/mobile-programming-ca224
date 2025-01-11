import 'package:flutter/material.dart';
import 'package:myapp/widgets/post_item_search.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final listPostItems = List.generate(12, (index) => const PostItem());

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // Position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Cari momen spesial Anda...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: InputBorder.none,
                  ),
                  onSubmitted: (value) {
                    // Implement search functionality here
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5, // Improved spacing
            mainAxisSpacing: 5,  // Improved spacing
            childAspectRatio: 1,
          ),
          itemCount: listPostItems.length,
          itemBuilder: (context, index) {
            return listPostItems[index];
          },
        ),
      ),
    );
  }
}