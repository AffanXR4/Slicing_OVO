import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // PROFILE CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0E9FF),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Color(0xFF5F1BBE),
                      ),
                    ),

                    const SizedBox(width: 12),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Affan Wistara Prasetianto',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '0878-4401-2246',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Ubah',
                        style: TextStyle(
                          color: Color(0xFF5F1BBE),
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // LOYALTY CODE
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.qr_code_2,
                      color: Colors.black87,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Loyalty Code',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Akun',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 5),

              // ACCOUNT MENU
              _ProfileMenu(
                icon: Icons.account_balance_wallet_outlined,
                title: 'OVO Premier',
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5F1BBE),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 5,
                    ),
                    minimumSize: Size.zero,
                  ),
                  child: const Text(
                    'Upgrade',
                    style: TextStyle(fontSize: 9),
                  ),
                ),
              ),

              const _ProfileMenu(
                icon: Icons.monetization_on_outlined,
                title: 'OVO Points',
              ),

              const _ProfileMenu(
                icon: Icons.confirmation_num_outlined,
                title: 'OVO Stamp',
              ),

              const _ProfileMenu(
                icon: Icons.link,
                title: 'Aplikasi Terhubung',
                badge: 'NEW',
              ),

              const SizedBox(height: 15),

              const Text(
                'Bantuan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 5),

              const _ProfileMenu(
                icon: Icons.help_outline,
                title: 'Pusat Bantuan',
              ),

              const SizedBox(height: 15),

              const Text(
                'Keamanan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 5),

              const _ProfileMenu(
                icon: Icons.lock_outline,
                title: 'Keamanan Akun',
              ),

              const _ProfileMenu(
                icon: Icons.password,
                title: 'Ubah Password',
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? badge;
  final Widget? trailing;

  const _ProfileMenu({
    required this.icon,
    required this.title,
    this.badge,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 19,
            color: const Color(0xFF5F1BBE),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          if (badge != null)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                badge!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          if (trailing != null) trailing!,

          if (trailing == null && badge == null)
            const Icon(
              Icons.chevron_right,
              size: 20,
              color: Colors.grey,
            ),
        ],
      ),
    );
  }
}