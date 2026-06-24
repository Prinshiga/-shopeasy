import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 44,
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  child: Text(
                    'JD',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color:
                          Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'jane.doe@email.com',
                  style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withValues(alpha: 0.6),
                      fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Recent Orders',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          _orderTile(
            context,
            orderId: '#ORD1023',
            date: 'June 18, 2026',
            status: 'Delivered',
            statusColor: Colors.green,
            amount: 'LKR 5,999.00',
          ),
          _orderTile(
            context,
            orderId: '#ORD1019',
            date: 'June 10, 2026',
            status: 'Delivered',
            statusColor: Colors.green,
            amount: 'LKR 8,999.00',
          ),
          _orderTile(
            context,
            orderId: '#ORD1004',
            date: 'May 29, 2026',
            status: 'Cancelled',
            statusColor: Colors.redAccent,
            amount: 'LKR 4,500.00',
          ),
          const SizedBox(height: 28),
          const Text(
            'Settings',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  themeProvider.isDark
                      ? Icons.dark_mode
                      : Icons.dark_mode_outlined,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: themeProvider.isDark,
                  onChanged: (_) => themeProvider.toggle(),
                ),
              );
            },
          ),
          _settingsTile(context, Icons.location_on_outlined, 'Shipping Address'),
          _settingsTile(context, Icons.payment_outlined, 'Payment Methods'),
          _settingsTile(context, Icons.notifications_outlined, 'Notifications'),
          _settingsTile(context, Icons.logout, 'Logout',
              color: Colors.redAccent),
        ],
      ),
    );
  }

  Widget _orderTile(
    BuildContext context, {
    required String orderId,
    required String date,
    required String status,
    required Color statusColor,
    required String amount,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(orderId,
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(date,
                  style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withValues(alpha: 0.6))),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                      fontSize: 11,
                      color: statusColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _settingsTile(BuildContext context, IconData icon, String label,
      {Color? color}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon,
          color: color ??
              Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7)),
      title: Text(label, style: TextStyle(color: color)),
      trailing: const Icon(Icons.chevron_right, size: 18),
      onTap: () {},
    );
  }
}
