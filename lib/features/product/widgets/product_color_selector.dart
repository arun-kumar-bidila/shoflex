import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoflex/core/constants/app_colors.dart';

class ProductColorSelector extends StatefulWidget {
  final List<String> colors;
  final String? initialColor;
  final ValueChanged<String> onColorSelected;

  const ProductColorSelector({
    super.key,
    required this.colors,
    required this.onColorSelected,
    this.initialColor,
  });

  @override
  State<ProductColorSelector> createState() => _ProductColorSelectorState();
}

class _ProductColorSelectorState extends State<ProductColorSelector> {
  String? selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = widget.initialColor ??
        (widget.colors.isNotEmpty ? widget.colors.first : null);
  }

  void _openColorBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //  HEADER 
                Row(
                  children: [
                    const SizedBox(width: 48),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Select Color",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
                const SizedBox(height: 16),

                ...widget.colors.map((colorName) {
                  final isSelected = selectedColor == colorName;

                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedColor = colorName);

                      widget.onColorSelected(colorName);

                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color:
                              isSelected ? Colors.blue : Colors.grey.shade300,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //  COLOR NAME
                          Text(
                            colorName,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),

                          Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _getColorFromName(colorName),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: isSelected ? 3 : 1.5,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              if (isSelected)
                                const Icon(Icons.check, color: Colors.white,size: 25,),
                              if (!isSelected)
                                SizedBox(
                                  width: 25,
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: _openColorBottomSheet,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Color",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _getColorFromName(selectedColor.toString()),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    "assets/arrowdown.svg",
                    width: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Color _getColorFromName(String name) {
    switch (name.toLowerCase()) {
      case 'black':
        return Colors.black;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'white':
        return Colors.white;
      case 'grey':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }
}
