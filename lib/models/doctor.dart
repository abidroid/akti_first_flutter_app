class Doctor {
  String name;
  String spe;
  String? mobile;
  String? clinicAddress;
  String? clinicTime;
  double? fee;

  Doctor({
    required this.name,
    required this.spe,
    this.mobile,
    this.clinicAddress,
    this.clinicTime,
    this.fee,
  });
}
