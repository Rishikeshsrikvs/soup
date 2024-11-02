import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  @override
  _AddAddressScreenState createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  // Track the selected chip index
  int _selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5E61D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Modify Address",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container for text fields with white background
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Street Name, City, State, Country'),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'House / Flat / Block No.'),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Apartment / Road / Area (Optional)'),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'State, Country (Optional)'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "SAVE AS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10), // Add some spacing
            // Container for ChoiceChips
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Wrap(
                spacing: 8.0,
                children: List.generate(4, (index) {
                  return ChoiceChip(
                    label: Text(_getChipLabel(index)),
                    selected: _selectedChipIndex == index,
                    onSelected: (selected) {
                      setState(() {
                        _selectedChipIndex =
                            selected ? index : _selectedChipIndex;
                      });
                    },
                  );
                }),
              ),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Save and proceed action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'SAVE AND PROCEED',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to return chip labels
  String _getChipLabel(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Work';
      case 2:
        return 'Friends And Family';
      case 3:
        return 'Other';
      default:
        return '';
    }
  }
}
