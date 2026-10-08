import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),

      body: SafeArea(
        child: _selectedIndex == 4
            ? const ProfilePage()
            : _buildHomePage(),
      ),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF5F1BBE),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,

        onTap: _onItemTapped,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            activeIcon: Icon(Icons.account_balance_wallet),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment_outlined),
            activeIcon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            activeIcon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // =========================
  // HOME PAGE
  // =========================
  Widget _buildHomePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // HEADER
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 18),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFB69AFF),
                  Color(0xFF7650D9),
                  Color(0xFF4B1EB0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'OVO',
                      style: TextStyle(
                        color: Color(0xFF5F1BBE),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.card_giftcard,
                            color: Color(0xFF5F1BBE),
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Promo',
                            style: TextStyle(
                              color: Color(0xFF5F1BBE),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // SALDO CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF3157C7),
                        Color(0xFF5D21B8),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'OVO Cash',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        'Total Saldo',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Tap untuk lihat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                        children: [
                          _balanceButton(
                            Icons.add_circle_outline,
                            'Top Up',
                          ),
                          _balanceButton(
                            Icons.arrow_upward,
                            'Transfer',
                          ),
                          _balanceButton(
                            Icons.account_balance_wallet_outlined,
                            'Tarik Tunai',
                          ),
                          _balanceButton(
                            Icons.receipt_long,
                            'History',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // PROMO CARD
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9DFFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.verified_user,
                    color: Color(0xFF5F1BBE),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    'Cek data kamu demi kelancaran\npemakaian akun OVO Premier kamu',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5F1BBE),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    minimumSize: Size.zero,
                  ),
                  child: const Text(
                    'Cek',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          // CATEGORY
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 15),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    _TabText(
                      text: 'Favorit',
                      active: true,
                    ),
                    _TabText(text: 'Finansial'),
                    _TabText(text: 'Hiburan'),
                    _TabText(text: 'Pilihan Lain'),
                  ],
                ),

                const SizedBox(height: 14),

                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.85,
                  children: const [
                    _ServiceItem(
                      icon: Icons.store,
                      title: 'Nabung by\nSuperbank',
                      promo: 'BARU',
                    ),
                    _ServiceItem(
                      icon: Icons.account_balance,
                      title: 'Pinjaman',
                      promo: 'HOT',
                    ),
                    _ServiceItem(
                      icon: Icons.receipt_long,
                      title: 'Uang\nElektronik',
                    ),
                    _ServiceItem(
                      icon: Icons.credit_card,
                      title: 'Angsuran\nKredit',
                    ),
                    _ServiceItem(
                      icon: Icons.phone_android,
                      title: 'Pulsa/Paket\nData',
                      promo: 'PROMO',
                    ),
                    _ServiceItem(
                      icon: Icons.lightbulb_outline,
                      title: 'PLN',
                      promo: 'PROMO',
                    ),
                    _ServiceItem(
                      icon: Icons.air,
                      title: 'Air PDAM',
                    ),
                    _ServiceItem(
                      icon: Icons.tv,
                      title: 'Internet &\nTV Kabel',
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // BANNER
          Container(
            height: 105,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF37206D),
                  Color(0xFF7A32C8),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: 15,
                  top: 18,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Keuntungan OVO',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Cashback & Promo Menarik',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  right: 20,
                  top: 25,
                  child: Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  static Widget _balanceButton(
    IconData icon,
    String title,
  ) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 23,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}

// TAB
class _TabText extends StatelessWidget {
  final String text;
  final bool active;

  const _TabText({
    required this.text,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11,
            fontWeight:
                active ? FontWeight.bold : FontWeight.normal,
            color: active
                ? const Color(0xFF5F1BBE)
                : Colors.grey,
          ),
        ),
      ),
    );
  }
}

// SERVICE ITEM
class _ServiceItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? promo;

  const _ServiceItem({
    required this.icon,
    required this.title,
    this.promo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFF0E9FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: const Color(0xFF5F1BBE),
                size: 23,
              ),
            ),

            if (promo != null)
              Positioned(
                top: -7,
                right: -8,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF1744),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    promo!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),

        const SizedBox(height: 7),

        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 9,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}