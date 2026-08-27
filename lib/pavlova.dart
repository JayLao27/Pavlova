import 'package:flutter/material.dart';
import 'colors.dart';
import 'icons.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lao Lab Cctivity 1'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 166, 166, 245),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: AppColors.border,
              child: const Center(
                child: Image(
                  image: AssetImage('assets/images/strawberry-pavlova.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Strawberry Pavlova',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Strawberry Pavlova is a classic Australian dessert featuring a crisp meringue shell with a soft, marshmallow-like center, topped with whipped cream and fresh strawberries.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: AppColors.star, size: 28),
                      Icon(Icons.star, color: AppColors.star, size: 28),
                      Icon(Icons.star, color: AppColors.star, size: 28),
                      Icon(Icons.star, color: AppColors.textSecondary, size: 28),
                      Icon(Icons.star, color: AppColors.textSecondary, size: 28),
                    ],
                  ),
                  SizedBox(width: 12),
                  Text(
                    '100+ reviews',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconLabel(AppIcons.kitchen, 'Prep', '25 min'),
                const SizedBox(width: 40),
                _buildIconLabel(AppIcons.timer, 'Cook', '1 hr'),
                const SizedBox(width: 40),
                _buildIconLabel(AppIcons.restaurant, 'Restaurant', '4-6'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconLabel(IconData icon, String label, String sublabel) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green, size: 32),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          sublabel,
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
