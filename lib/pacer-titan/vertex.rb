require "yaml"

module Pacer
  TitanVertex = com.tinkerpop.blueprints.Vertex

  # Extend the java class imported from Titan.
  class TitanVertex
    include Pacer::Core::Graph::VerticesRoute
    include ElementMixin
    include VertexMixin
  end
end
