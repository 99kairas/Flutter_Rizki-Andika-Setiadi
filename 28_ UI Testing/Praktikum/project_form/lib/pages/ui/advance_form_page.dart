import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:open_filex/open_filex.dart';
import 'package:project_form/shared/theme.dart';
import 'package:intl/intl.dart';

class AdvanceForm extends StatefulWidget {
  const AdvanceForm({super.key});

  @override
  State<AdvanceForm> createState() => _AdvanceFormState();
}

class _AdvanceFormState extends State<AdvanceForm> {
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.cyan;
  final isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Interactive Widgets',
        ),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            // Build Date Picker
            buildDatePicker(),
            const SizedBox(height: 10),
            const Divider(thickness: 2),

            // Buiild Color Picker
            buildColorPicker(),
            const SizedBox(height: 10),
            const Divider(thickness: 2),

            // Build File Picker
            buildFilePicker(),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Date'),
              GestureDetector(
                  onTap: () async {
                    final selectDate = await showDatePicker(
                      context: context,
                      initialDate: currentDate,
                      firstDate: DateTime(1900),
                      lastDate: DateTime(currentDate.year + 10),
                    );
                    setState(() {
                      if (selectDate != null) {
                        _dueDate = selectDate;
                      }
                    });
                  },
                  child: Text(
                    DateFormat('dd MMMM yyyy').format(_dueDate),
                    style:
                        blueTextStyle.copyWith(fontWeight: bold, fontSize: 20),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColorPicker() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Color'),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Pick Your Color'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Save'),
                        ),
                      ],
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          },
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: _currentColor,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildFilePicker() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pick Files',
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              child: Text(
                'Browse File',
                style: whiteTextStyle.copyWith(fontWeight: semiBold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final files = result.files.first;
    _openFile(files);
  }

  void _openFile(PlatformFile file) {
    OpenFilex.open(file.path);
  }
}
