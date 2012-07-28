require "yaml"

module Pacer
  TitanEdge = com.thinkaurelius.titan.core.TitanEdge

  # Extend the java class imported from Titan.
  class TitanEdge
    include Pacer::Core::Graph::EdgesRoute
    include ElementMixin
    include EdgeMixin

    def in_vertex(extensions = nil)
      v = getVertex Pacer::Pipes::IN
      v.graph = graph
      if extensions.is_a? Enumerable
        v.add_extensions extensions
      elsif extensions
        v.add_extensions [extensions]
      else
        v
      end
    end

    def out_vertex(extensions = nil)
      v = getVertex Pacer::Pipes::OUT
      v.graph = graph
      if extensions.is_a? Enumerable
        v.add_extensions extensions
      elsif extensions
        v.add_extensions [extensions]
      else
        v
      end
    end
  end
end
