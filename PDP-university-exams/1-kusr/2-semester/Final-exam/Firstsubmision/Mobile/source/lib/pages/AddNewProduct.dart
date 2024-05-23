// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:source/data.dart';
import 'package:source/models/product.dart';
import 'package:source/pages/HomePage.dart';

class AddNewProductPage extends StatefulWidget {
  const AddNewProductPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddNewProductPageState createState() => _AddNewProductPageState();
}

class _AddNewProductPageState extends State<AddNewProductPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController imageUrlController = TextEditingController();
  String? selectedCategory;
  bool isSubmitEnabled = false;

  // List of possible categories
  List<String> categories = ['Household', 'Electronics', 'Clothes'];

  // This function checks whether all required fields are filled
  void checkSubmitStatus() {
    setState(() {
      isSubmitEnabled = titleController.text.isNotEmpty &&
          priceController.text.isNotEmpty &&
          imageUrlController.text.isNotEmpty &&
          selectedCategory != null;
    });
  }

  // This function is responsible for adding a new product
  void addProduct() {
    if (isSubmitEnabled) {
      final newProduct = Product(
        title: titleController.text,
        category: selectedCategory!,
        price: double.parse(priceController.text),
        imageUrl: imageUrlController.text,
      );

      // Insert the new product at the beginning of the list
      products.insert(0, newProduct);

      // Navigate back to the Home page and clear the back stack
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
            (route) => false,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    titleController.addListener(checkSubmitStatus);
    priceController.addListener(checkSubmitStatus);
    imageUrlController.addListener(checkSubmitStatus);
  }

  @override
  void dispose() {
    titleController.dispose();
    priceController.dispose();
    imageUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Row(
          children: [
            Text('Add New Product', style: TextStyle(color: Colors.white)),
            Icon(Icons.add, color: Colors.white),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Product Title',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: imageUrlController,
              decoration: const InputDecoration(
                labelText: 'Image URL',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              dropdownColor: Colors.blueGrey[900],
              value: selectedCategory,
              onChanged: (value) {
                setState(() {
                  selectedCategory = value;
                });
                checkSubmitStatus();
              },
              hint: const Text('Select Category', style: TextStyle(color: Colors.white)),
              items: categories.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: const TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.blue, // foreground
                ),
                onPressed: isSubmitEnabled ? addProduct : null,
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
