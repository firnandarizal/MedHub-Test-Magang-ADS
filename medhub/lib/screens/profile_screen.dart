import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/31f7/72d2/12d88028c464d751a712a4f2b915cb5d?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MBBc1yYfsFJpWQWXuSWSUjXJD60PfhuhPZfco5T283rAFDsblhjWZSbwcZjj6F94KeyEd76BWidnFTvMwKPdKwyYPk9iP~ADyjq5x7p5M9gd5sINWsYsFYkSzerZyqGtQi62uHdh6H8V5I2Ol2-cmqZhe3vf2qB1ZNDox4IP1mRaJ0wde8SWXL6Vq5YW2bKnTajRYwLVotIyn6h6eQF8kP1hAMDrHofNzI~BVGNoTHWDEQyjSV2HEN0Ff4phTxPM4KeSOgJjmtyj9SaMcoInyIeYS~3~VhEoBZANlRFbwihpKxkRUFkdz95a8l~~teUm4-OFtXbtodNqE1gHiMuuGQ__'),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Lorem Ipsum',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Welcome to MedHub',
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Menu Options
            _buildMenuOption(context, Icons.person_outline, 'Private Account'),
            _buildMenuOption(
                context, Icons.document_scanner_outlined, 'My Consults'),
            _buildMenuOption(context, Icons.receipt_long_outlined, 'My Orders'),
            _buildMenuOption(context, Icons.access_time, 'Billing'),
            _buildMenuOption(context, Icons.help_outline, 'Faq'),
            _buildMenuOption(context, Icons.settings_outlined, 'Settings'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        currentIndex: 4, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.add_box_rounded, size: 32, color: Color(0xff0F3759)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildMenuOption(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 16),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: () {
        // Handle menu option tap
      },
    );
  }
}

void main() => runApp(MaterialApp(home: ProfilePage()));
