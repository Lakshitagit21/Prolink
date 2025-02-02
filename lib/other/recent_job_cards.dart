import 'package:flutter/material.dart';

import 'job_detail_page.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logo;
  final int hourlyRate;

  RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logo,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () {
          // Navigate to the job detail page when the card is tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JobDetailPage(
                jobTitle: jobTitle,
                companyName: companyName,
                location: 'Location',
                // Replace with actual location
                jobDescription: 'Job Description',
                // Replace with actual description
                salary: '\$$hourlyRate/hr',
                // Replace with actual salary
                skills: 'Skill 1, Skill 2', // Replace with actual skills
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            border: Border.all(color: Theme.of(context).colorScheme.tertiary),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.all(6),
                      color: Theme.of(context).colorScheme.surface,
                      child: Image.asset(logo),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        companyName,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '\$$hourlyRate/hr',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
