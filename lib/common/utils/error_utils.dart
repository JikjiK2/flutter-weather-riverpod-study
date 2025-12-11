String parseErrorMessage(Object error) {
  String errorMessage = error.toString();
  if (errorMessage.startsWith('Exception: ')) {
    return errorMessage.replaceFirst('Exception: ', '');
  }
  return errorMessage;
}
