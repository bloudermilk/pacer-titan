require "yaml"

module Pacer
  TitanVertex = com.thinkaurelius.titan.core.TitanVertex

  # Extend the java class imported from Titan.
  class TitanVertex
    include Pacer::Core::Graph::VerticesRoute
    include ElementMixin
    include VertexMixin
  end
end
