class PymentModel {
  final String id;
  final String namecard;
  final String cardholdername;
  final String expireddate;
  final String cvv;

  PymentModel({
    required this.id,
    required this.namecard,
    required this.cardholdername,
    required this.expireddate,
    required this.cvv,
  });
}

List<PymentModel> pymentmodel = [];
