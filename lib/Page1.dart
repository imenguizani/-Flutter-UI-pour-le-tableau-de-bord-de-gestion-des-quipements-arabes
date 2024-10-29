import 'package:flutter/material.dart';



class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
backgroundColor: Colors.blueGrey[100],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'العهدة',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),
                Divider(
                  color: Colors.black, // Change color here
                  thickness: 1.0, // Change thickness here
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    CustomButton(
                      icon: Icons.person,
                      label: 'وحدة / فرع / طراز',
                      onPressed: () {},
                    ),
                    CustomButton(
                      icon: Icons.add_circle,
                      label: 'إضافة معدة',
                      onPressed: () {},
                    ),
                    CustomButton(
                      icon: Icons.description,
                      label: 'تصدير تقرير',
                      onPressed: () {},
                    ),

                    CustomButton(
                      icon: Icons.search,
                      label: 'بحث / تعديل',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: CustomButton(
                    icon: Icons.storage,
                    label: 'نسخ احتياطي',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey[50],
        onPrimary: Colors.green,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.teal, size: 40),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
