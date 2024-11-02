import 'package:flutter/material.dart';
import 'package:test_app/address_screen/screens/screens/modify_address_screen.dart';
import 'add_address_screen.dart';

class AddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen, // Background for the screen
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "My Address",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Add Address Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddAddressScreen()),
                    );
                  },
                  icon: Icon(Icons.add, color: Colors.red),
                  label: Text(
                    'Add Address',
                    style: TextStyle(color: Colors.red),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: Colors.black),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "SAVED ADDRESSES",
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
          ),
          // Saved Address Container
          SavedAddressWidget(),
        ],
      ),
    );
  }
}

class SavedAddressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85, // Set a medium width
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white, // White background for the container
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "HOME",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  PopupMenuButton<String>(
                    onSelected: (value) {
                      if (value == 'Modify') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ModifyAddressScreen()),
                        );
                      } else if (value == 'Delete') {
                        // Handle delete action
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return {'Modify', 'Delete'}.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                "Door No 12 - 17, Street Name, City, Pincode",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
