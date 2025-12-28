import 'package:either_dart/src/either.dart';
import 'package:lost_n_found/core/error/failures.dart';
import 'package:lost_n_found/core/usecases/app_usecase.dart';
import 'package:lost_n_found/features/batch/domain/entities/batch_entity.dart';
import 'package:lost_n_found/features/batch/domain/repositories/batch_repository.dart';

class GetBatchByIdUsecase implements UsecaseWithParams<BatchEntity, String> {
  final IBatchRepository _batchRepository;

  GetBatchByIdUsecase({required IBatchRepository batchRepository})
      : _batchRepository = batchRepository;

  @override
  Future<Either<Failure, BatchEntity>> call(String batchId) {
    return _batchRepository.getBatchById(batchId);
  }
}
