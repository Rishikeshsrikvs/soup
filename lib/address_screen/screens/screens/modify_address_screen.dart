import 'package:flutter/material.dart';
import 'package:test_app/address_screen/screens/add_address_screen.dart';

class ModifyAddressScreen extends StatelessWidget {
  const ModifyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AddAddressScreen(); // reuse AddAddressScreen for modification with pre-filled data
  }
}
