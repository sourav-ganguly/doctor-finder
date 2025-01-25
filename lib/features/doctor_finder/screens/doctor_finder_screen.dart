import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/doctor_provider.dart';
import '../widgets/orion_doctor_list_item_card.dart';
import '../widgets/orion_doctor_search_card.dart';

class DoctorFinderScreen extends ConsumerStatefulWidget {
  const DoctorFinderScreen({super.key});

  @override
  ConsumerState<DoctorFinderScreen> createState() => _DoctorFinderScreenState();
}

class _DoctorFinderScreenState extends ConsumerState<DoctorFinderScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _handleSearch() {
    FocusScope.of(context).unfocus();
    ref.read(doctorSearchProvider.notifier).state = _searchController.text;
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(doctorSearchProvider);
    final doctorsAsync = ref.watch(doctorListProvider(searchQuery));

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Doctor Finder',
            // style: TextStyle(color: Colors.white),
          ),
          // backgroundColor: theme.primaryColor,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            OrionDoctorSearchCard(
              controller: _searchController,
              onSearchPressed: _handleSearch,
            ),
            doctorsAsync.when(
              loading: () => const Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (error, stackTrace) => Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Error: ${error.toString()}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.red,
                      ),
                ),
              ),
              data: (doctors) => Column(
                children: doctors
                    .map((doctor) => OrionDoctorListItemCard(doctor: doctor))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
