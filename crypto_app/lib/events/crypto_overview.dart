import 'package:crypto_app/auth/auth_provider.dart';
import 'package:crypto_app/prefs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CryptoOverview extends StatefulWidget {
  const CryptoOverview({Key? key}) : super(key: key);

  @override
  _CryptoOverviewState createState() => _CryptoOverviewState();
}

class _CryptoOverviewState extends State<CryptoOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events"),
      actions: [
        IconButton(onPressed: () => Provider.of<Auth>(context, listen: false).logout(), icon: Icon(Icons.logout))
      ],),
    );
  }
}
