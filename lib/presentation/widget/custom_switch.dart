import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const CustomSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.008),
      child: GestureDetector(
        onTap: () {
          onChanged?.call(!value);
        },
        child: Container(
          height: width * 0.015,
          width: width * 0.030, // Increased width for a more visible tap area
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: value ? Colors.green : Colors.grey[350],
          ),
          child: Stack(
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            children: [
              Container(
                width: width * 0.020,
                height: width * 0.013,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
