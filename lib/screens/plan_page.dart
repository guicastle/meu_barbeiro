import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_barbeiro/values/colors.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({Key? key}) : super(key: key);

  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.90;
    double height = MediaQuery.of(context).size.height * 0.90;
    return Scaffold(
      appBar: AppBar(
        //systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
        title: const Text("Planos"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            padding: const EdgeInsets.only(left: 14, top: 12),
            icon: const Icon(Icons.close, color: Color(0xFF363f93)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white54,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}
