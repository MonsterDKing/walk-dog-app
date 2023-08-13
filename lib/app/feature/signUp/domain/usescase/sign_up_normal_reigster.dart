import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:walk_dog_app/app/feature/signUp/domain/repositories/sign_up_repository.dart';
import 'package:walk_dog_app/core/api/api_rest_result.dart';
import 'package:walk_dog_app/core/common/failures.dart';

@Injectable()
class SignUpNormalRegisterUseCase {
  final SignUpRepository repository;

  SignUpNormalRegisterUseCase(this.repository);

  Future<Either<Failure, bool>> call({
    required String name,
    required String lastName,
    required String cellPhone,
    required String password,
  }) async {
    var res = await repository.signUp(
      name: name,
      lastName: lastName,
      cellPhone: cellPhone,
      password: password,
    );

    if (res is APIResult) {
      return Right(true);
    } else {
      return Left(ServerFailure());
    }
  }
}
