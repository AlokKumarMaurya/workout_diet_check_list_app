abstract class BaseResponseModel<T> {
  final String message;
  final bool isSuccess;

  const BaseResponseModel({required this.isSuccess, required this.message});

  T toEntity();
}
