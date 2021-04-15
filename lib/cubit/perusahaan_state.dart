part of 'perusahaan_cubit.dart';

abstract class PerusahaanState extends Equatable {
  const PerusahaanState();

  @override
  List<Object> get props => [];
}

class PerusahaanInitial extends PerusahaanState {}

class PerusahaanLoaded extends PerusahaanState {
  final List<Perusahaan> perusahaan;

  PerusahaanLoaded(this.perusahaan);

  @override
  List<Object> get props => [perusahaan];
}

class PerusahaanLoadingFailed extends PerusahaanState {
  final String message;

  PerusahaanLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
