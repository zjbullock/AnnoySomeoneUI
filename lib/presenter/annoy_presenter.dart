import 'package:annoy_someone/model/annoy_model.dart';

class AnnoyPresenter {
  AnnoyModel model = AnnoyModel();
  String prepareAnnoyRequest(String to, from, phoneNumber) {
    String modalMessage = model.postAnnoyRequest(to, from, phoneNumber);
    return modalMessage;
  }
}