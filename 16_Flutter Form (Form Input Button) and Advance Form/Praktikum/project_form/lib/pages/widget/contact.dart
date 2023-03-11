class Contact {
  String firstName;
  String lastName;
  String contact;

  Contact({
    required this.firstName,
    this.lastName = '',
    required this.contact,
  });
}
