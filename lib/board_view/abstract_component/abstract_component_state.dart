import 'package:component_grpc/component_grpc.dart';
import 'package:equatable/equatable.dart';

abstract class AbstractComponentState<State> extends Equatable {
  const AbstractComponentState(this.componentResponse);

  State copyWithNewComponent(ComponentResponse componentResponse);

  final ComponentResponse componentResponse;

  @override
  List<Object?> get props => [componentResponse];
}
