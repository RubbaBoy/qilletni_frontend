import 'package:component_grpc/component_grpc.dart';

enum ComponentType {
  song(SongComponentResponse),
  function(FunctionComponentResponse),
  forLoop(ForLoopComponentResponse),
  rawCollection(RawCollectionComponentResponse),
  lastFm(LastFmCollectionComponentResponse),
  spotify(SpotifyCollectionComponentResponse);

  final Type type;

  const ComponentType(this.type);
}

class Component {

  // Component._(this.component, this.type);
  //
  // factory Component(dynamic componentResponse) {
  //   for (var componentType in ComponentType.values) {
  //     if (componentResponse.runtimeType == componentType.type) {
  //       return Component._(componentResponse, componentType);
  //     }
  //   }
  //
  //   throw 'Unknown component type ${componentResponse.runtimeType}';
  // }
  //
  // final dynamic component;
  // final ComponentType type;

  Component(this.component);

  final ComponentResponse component;

  get type => component.whichContent();

}