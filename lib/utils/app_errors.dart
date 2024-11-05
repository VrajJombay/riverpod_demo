abstract class AppError implements Exception {}

class InternetError extends AppError {}

class BadRequestError extends AppError {}

class UnknownError extends AppError {}
