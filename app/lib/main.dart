import 'package:flutter/material.dart';

void main() {
  runApp(const MaegaApp());
}

class MaegaApp extends StatelessWidget {
  const MaegaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maega Profile Flow',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffd82645)),
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

const Color primaryRed = Color(0xffd82645);
const Color lightBlue = Color(0xffeaf5ff);
const Color borderGrey = Color(0xffeeeeee);
const Color textGrey = Color(0xff777777);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShell(
      selectedIndex: 3,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  const MaegaLogoSmall(),
                  const Expanded(
                    child: Center(
                      child: Text('Profile', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      border: Border.all(color: borderGrey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.settings, size: 19),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 31,
                    backgroundColor: primaryRed,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=47'),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Jhon Doe', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
                      SizedBox(height: 3),
                      Text('+91 9876543210', style: TextStyle(fontSize: 11, color: textGrey)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 22),
              ProfileTile(icon: Icons.badge_outlined, title: 'Personal Information', onTap: () => go(context, const PersonalInfoScreen())),
              ProfileTile(icon: Icons.location_on_outlined, title: 'Saved Addresses', onTap: () => go(context, const SavedAddressesScreen())),
              ProfileTile(icon: Icons.credit_card, title: 'Payment Methods', onTap: () => go(context, const PaymentMethodsScreen())),
              const ProfileTile(icon: Icons.local_offer, title: 'Offers & Rewards'),
              ProfileTile(icon: Icons.translate, title: 'Language', onTap: () => go(context, const LanguageScreen())),
              ProfileTile(icon: Icons.support_agent, title: 'Help And Support', onTap: () => go(context, const HelpSupportScreen())),
              ProfileTile(icon: Icons.info_outline, title: 'About Maega', onTap: () => go(context, const AboutScreen())),
              const Spacer(),
              const Divider(),
              const SizedBox(height: 8),
              const Row(children: [Icon(Icons.delete_outline, color: primaryRed, size: 18), SizedBox(width: 12), Text('Delete Account', style: TextStyle(color: primaryRed, fontWeight: FontWeight.w600))]),
              const SizedBox(height: 18),
              SizedBox(
                height: 42,
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: primaryRed, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                  onPressed: () {},
                  icon: const Icon(Icons.logout, size: 18),
                  label: const Text('Log Out'),
                ),
              ),
              const SizedBox(height: 8),
              const Text('Maega V1.0', style: TextStyle(color: textGrey, fontSize: 11)),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Personal Information',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          FieldBox(label: 'Name', value: 'Jhon Doe'),
          FieldBox(label: 'Phone', value: '+91 9876543210'),
          FieldBox(label: 'Email', value: 'you@example.com'),
        ],
      ),
    );
  }
}

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Payment Methods',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionLabel('SAVED CARDS'),
          Container(
            height: 52,
            decoration: cardDecoration(),
            child: const Row(children: [SizedBox(width: 18), Icon(Icons.add_box_outlined, color: primaryRed), SizedBox(width: 12), Text('ADD NEW CARD', style: TextStyle(color: primaryRed, fontSize: 12, fontWeight: FontWeight.w800))]),
          ),
          const SizedBox(height: 25),
          const SectionLabel('Wallets'),
          const LinkAccountTile('Mobikwik'),
          const LinkAccountTile('Phonepe'),
          const LinkAccountTile('Amazon Pay'),
          const SizedBox(height: 25),
          const SectionLabel('UPI'),
          const LinkAccountTile('Google Pay'),
          const LinkAccountTile('Phonepe'),
          const LinkAccountTile('Paytm'),
        ],
      ),
    );
  }
}

class SavedAddressesScreen extends StatelessWidget {
  const SavedAddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Saved Addresses',
      child: Column(
        children: const [
          AddAddressButton(),
          SizedBox(height: 16),
          AddressCard(title: 'Home'),
          SizedBox(height: 14),
          AddressCard(title: 'Office'),
        ],
      ),
    );
  }
}

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Help And Support',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('All Topics', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
          SizedBox(height: 15),
          HelpTile(icon: Icons.person_outline, title: 'Account'),
          HelpTile(icon: Icons.group_outlined, title: 'Getting Started With Maega'),
          HelpTile(icon: Icons.payment, title: 'Payment & Maega Credits'),
          HelpTile(icon: Icons.card_membership, title: 'Maega Plus Membership'),
          HelpTile(icon: Icons.verified_user_outlined, title: 'Maega Safety'),
          HelpTile(icon: Icons.workspace_premium_outlined, title: 'Claim Warranty'),
        ],
      ),
    );
  }
}

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'Language',
      child: Column(
        children: const [
          LanguageHeader(),
          SizedBox(height: 14),
          LanguageCard(title: 'English', subtitle: 'English', selected: true),
          LanguageCard(title: 'Hindi', subtitle: 'हिन्दी'),
          LanguageCard(title: 'Tamil', subtitle: 'தமிழ்'),
          LanguageCard(title: 'Telugu', subtitle: 'తెలుగు'),
          LanguageCard(title: 'Kannada', subtitle: 'ಕನ್ನಡ'),
          LanguageCard(title: 'Malayalam', subtitle: 'മലയാളം'),
        ],
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      title: 'About',
      child: Column(
        children: const [
          SizedBox(height: 20),
          AboutCard(),
          Spacer(),
          MaegaLogoSmall(size: 38),
          SizedBox(height: 5),
          Text('Maega', style: TextStyle(fontSize: 11)),
          Text('V1.0', style: TextStyle(fontSize: 11)),
          SizedBox(height: 35),
        ],
      ),
    );
  }
}

class SimplePage extends StatelessWidget {
  final String title;
  final Widget child;
  const SimplePage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 58,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: borderGrey))),
              child: Row(
                children: [
                  IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios, size: 18)),
                  Text(title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppShell extends StatelessWidget {
  final Widget child;
  final int selectedIndex;
  const AppShell({super.key, required this.child, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: primaryRed,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_long_outlined), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined), label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  const ProfileTile({super.key, required this.icon, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(children: [Icon(icon, size: 19), const SizedBox(width: 14), Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600))]),
      ),
    );
  }
}

class FieldBox extends StatelessWidget {
  final String label;
  final String value;
  const FieldBox({super.key, required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: const TextStyle(color: textGrey, fontSize: 12)),
        const SizedBox(height: 8),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 14),
          decoration: cardDecoration(),
          child: Row(children: [Expanded(child: Text(value, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))), const Text('EDIT', style: TextStyle(color: primaryRed, fontSize: 11, fontWeight: FontWeight.w700))]),
        )
      ]),
    );
  }
}

class SectionLabel extends StatelessWidget {
  final String text;
  const SectionLabel(this.text, {super.key});
  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsets.only(bottom: 10), child: Align(alignment: Alignment.centerLeft, child: Text(text, style: const TextStyle(color: textGrey, fontSize: 12, fontWeight: FontWeight.w600))));
}

class LinkAccountTile extends StatelessWidget {
  final String name;
  const LinkAccountTile(this.name, {super.key});
  @override
  Widget build(BuildContext context) => Container(height: 52, padding: const EdgeInsets.symmetric(horizontal: 14), decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: borderGrey))), child: Row(children: [Expanded(child: Text(name, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700))), const Text('LINK ACCOUNT', style: TextStyle(color: primaryRed, fontSize: 11, fontWeight: FontWeight.w800))]));
}

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({super.key});
  @override
  Widget build(BuildContext context) => Container(height: 56, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: primaryRed)), child: Row(children: [const SizedBox(width: 14), Container(height: 38, width: 38, decoration: BoxDecoration(color: primaryRed, borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.add, color: Colors.white)), const SizedBox(width: 14), const Text('Add New Address', style: TextStyle(color: primaryRed, fontWeight: FontWeight.w800))]));
}

class AddressCard extends StatelessWidget {
  final String title;
  const AddressCard({super.key, required this.title});
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.all(12), decoration: cardDecoration(), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [const Icon(Icons.home_outlined, color: primaryRed, size: 20), const SizedBox(width: 8), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(color: primaryRed, fontWeight: FontWeight.w800)), const SizedBox(height: 5), const Text('123, MG Road, Sector 12, Koramangala, Bangalore,\n560034 Near Apollo Hospital', style: TextStyle(color: textGrey, fontSize: 11, height: 1.35))])), Column(children: const [Icon(Icons.edit_square, size: 18, color: textGrey), SizedBox(height: 18), Icon(Icons.delete_outline, size: 18, color: primaryRed)])]));
}

class HelpTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const HelpTile({super.key, required this.icon, required this.title});
  @override
  Widget build(BuildContext context) => Container(height: 52, decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: borderGrey))), child: Row(children: [Icon(icon, size: 18), const SizedBox(width: 14), Expanded(child: Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600))), const Icon(Icons.arrow_forward_ios, size: 13)]));
}

class LanguageHeader extends StatelessWidget {
  const LanguageHeader({super.key});
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: lightBlue, borderRadius: BorderRadius.circular(10), border: Border.all(color: const Color(0xffcde5ff))), child: const Row(children: [Icon(Icons.language, color: Colors.blue), SizedBox(width: 12), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Choose Your Language', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 12)), Text('Select your preferred language for the app interface', style: TextStyle(color: Colors.blue, fontSize: 10))]))]));
}

class LanguageCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;
  const LanguageCard({super.key, required this.title, required this.subtitle, this.selected = false});
  @override
  Widget build(BuildContext context) => Container(margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13), decoration: cardDecoration(), child: Row(children: [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w800)), Text(subtitle, style: const TextStyle(fontSize: 12, color: textGrey))])), if (selected) const CircleAvatar(radius: 13, backgroundColor: primaryRed, child: Icon(Icons.check, color: Colors.white, size: 16))]));
}

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});
  @override
  Widget build(BuildContext context) => Container(width: double.infinity, padding: const EdgeInsets.all(14), decoration: cardDecoration(), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Row(children: [MaegaLogoSmall(size: 42), SizedBox(width: 12), Text('Maega', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))]), SizedBox(height: 20), Text('Maega Is A Modern Urban Services Company Committed To Making Everyday Life Easier, Safer, And More Convenient. We Connect Customers With Trained, Verified, And Reliable Professionals To Deliver High-Quality Services Right At Their Doorstep. Built For Today’s Fast-Paced Urban Lifestyle, Maega Focuses On Trust, Transparency, And Efficiency. From Seamless Booking To On-Time Service Delivery, Every Step Is Designed To Provide A Smooth And Hassle-Free Experience. We Work Only With Skilled Experts Who Follow Strict Quality And Hygiene Standards To Ensure Customer Satisfaction Every Time.', style: TextStyle(fontSize: 11.5, height: 1.45, fontWeight: FontWeight.w500))]));
}

class MaegaLogoSmall extends StatelessWidget {
  final double size;
  const MaegaLogoSmall({super.key, this.size = 32});
  @override
  Widget build(BuildContext context) => SizedBox(width: size, height: size, child: Stack(alignment: Alignment.center, children: [Icon(Icons.ac_unit, color: primaryRed, size: size * .75), Positioned(bottom: 0, child: Text('MAEGA', style: TextStyle(fontSize: size * .18, fontWeight: FontWeight.w900)))]));
}

BoxDecoration cardDecoration() => BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(color: borderGrey), boxShadow: [BoxShadow(color: Colors.black.withOpacity(.02), blurRadius: 5, offset: const Offset(0, 2))]);

void go(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => page));
}
