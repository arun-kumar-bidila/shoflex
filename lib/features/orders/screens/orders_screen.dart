import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shoflex/core/constants/app_colors.dart';
import 'package:shoflex/features/orders/screens/track_order_screen.dart';
import 'package:shoflex/features/orders/widgets/no_orders.dart';
import 'package:shoflex/providers/order_provider.dart';
import 'package:shoflex/models/order_model.dart';
import 'package:shoflex/widgets/bottombar.dart';

class OrdersScreen extends StatefulWidget {
  static const String routeName = "/orders-screen";
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int selectedStatusIndex = 0;

  final List<OrderStatus> statuses = [
    OrderStatus.pending,
    OrderStatus.completed,
    OrderStatus.cancelled,
  ];

  final List<String> statusNames = [
    "Processing",
    "Shipped",
    "Delivered",
    "Returned",
    "Cancelled",
  ];

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    // Filter orders based on selected status
    final orders = orderProvider.orders;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: orders.isEmpty
          ? NoOrders()
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      children: [
                        // Back Button (LEFT)
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Bottombar.routeName,
                                arguments: 0);
                          },
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.fillColor,
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/backarrow.svg",
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ),
                        ),

                        // CENTER TITLE
                        Expanded(
                          child: Center(
                            child: Text(
                              "Orders",
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  fontFamily: "Gabarito"),
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 44,
                          height: 44,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // STATUS TABS
                    SizedBox(
                      height: 30,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: statusNames.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 8),
                        itemBuilder: (context, index) {
                          final isSelected = selectedStatusIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedStatusIndex = index;
                              });
                            },
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.blue
                                    : AppColors.fillColor,
                                borderRadius: BorderRadius.circular(100),
                                
                              ),
                              child: Text(
                                statusNames[index],
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 30),

                    // ORDERS LIST
                    Expanded(
                      child: ListView.separated(
                        itemCount: orders.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final Order order = orders[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, TrackOrderScreen.routeName);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 14),
                              decoration: BoxDecoration(
                                color: AppColors.fillColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/orders2.svg",
                                    width: 25,
                                    height: 25,
                                    colorFilter: ColorFilter.mode(
                                      Colors.black,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Order ${order.orderId}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          "${order.items.length} items",
                                          style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    "assets/forwardarrow.svg",
                                    width: 20,
                                    height: 20,
                                    colorFilter: ColorFilter.mode(
                                      Colors.black,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
