import 'env.dart';

class EnvDevelopment extends Env {
  @override
  bool useMockApi = true;
  @override
  String networkBaseUrl = 'https://api.nasa.gov/';
}

void main() {
  EnvDevelopment();
}
