import 'package:flutter/material.dart';
import 'package:source/models/product.dart';
import 'package:source/data.dart';
import 'package:source/pages/AdminLogin.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> displayedProducts = [];
  String searchQuery = '';
  String selectedCategory = 'All';
  bool sortAscending = true;

  @override
  void initState() {
    super.initState();
    displayedProducts = products; // Initialize with all products
  }

  void searchProducts(String query) {
    setState(() {
      searchQuery = query;
      displayedProducts = products.where((product) {
        return product.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  void sortProducts() {
    setState(() {
      sortAscending = !sortAscending;
      displayedProducts.sort((a, b) =>
      sortAscending ? a.price.compareTo(b.price) : b.price.compareTo(a.price));
    });
  }

  void filterByCategory(String category) {
    setState(() {
      selectedCategory = category;
      if (category == 'All') {
        displayedProducts = products; // Display all products
      } else {
        displayedProducts = products.where((product) {
          return product.category == category;
        }).toList(); // Display products of the selected category
      }
    });
  }

  List<Widget> buildProductPairs() {
    List<Widget> productPairs = [];
    for (int i = 0; i < displayedProducts.length; i += 2) {
      var firstProduct = displayedProducts[i];
      var secondProduct = (i + 1 < displayedProducts.length)
          ? displayedProducts[i + 1]
          : null;

      productPairs.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ProductCard(firstProduct),
              ),
              if (secondProduct != null)
                Expanded(
                  child: ProductCard(secondProduct),
                ),
            ],
          ),
        ),
      );
    }
    return productPairs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          children: [
            Text('Set-Market', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            Icon(Icons.sell_outlined, color: Colors.white)
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.sort_outlined, color: Colors.white),
            onPressed: sortProducts, // Sort by price
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search Products',
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent),
                ),
              ),
              style: TextStyle(color: Colors.white),
              onChanged: searchProducts,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              dropdownColor: Colors.blueGrey[900],
              value: selectedCategory,
              onChanged: (value) => filterByCategory(value ?? 'All'), // Corrected syntax
              items: ['All', 'Household', 'Electronics', 'Clothes']   //changes
                  .map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
          ),

          Expanded(
            child: ListView(
              children: buildProductPairs(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdminLoginPage()),
          );
        },
        backgroundColor: Colors.blueGrey[900], // Change the color of the FloatingActionButton
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center alignment
          children: [
            Center(
              child: Image.network(
                product.imageUrl,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10), // Spacing
            Text(
              product.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text('Category: ${product.category}', style: TextStyle(color: Colors.white)),
            Text('Price: \$${product.price}', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
