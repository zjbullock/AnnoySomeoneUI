import 'package:annoy_someone/model/annoy_model.dart';

class AnnoyPresenter {
  AnnoyModel model = AnnoyModel();
  Future<String> prepareAnnoyRequest(String to, from, phoneNumber) async{
    String modalMessage;
    modalMessage = await model.postAnnoyRequest(to, from, phoneNumber);
    return modalMessage;
  }
}