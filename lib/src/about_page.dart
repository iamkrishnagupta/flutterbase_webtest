import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Our Company!',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                'Our mission is to revolutionize the way people interact with technology. We believe in creating innovative solutions that make life easier and more enjoyable for everyone.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Key Features:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                '1. Cutting-edge technology\n'
                '2. User-friendly interfaces\n'
                '3. Exceptional customer service\n'
                '4. Continuous improvement and innovation',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Meet Our Team:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Arjun Rawat',
                    role: 'CEO',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'David Malhan',
                    role: 'CTO',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Rishabh Gupta',
                    role: 'Senior Engineer',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Amit Jain',
                    role: 'Finances',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Vivek Gupta',
                    role: 'Analytics',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Shery Bose',
                    role: 'Head Department',
                  ),
                  TeamMemberCard(
                    imageUrl:
                        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    name: 'Anirudh Shakya',
                    role: 'PR Manager',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String role;

  const TeamMemberCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(75.0),
              child: Image.network(
                imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              role,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
