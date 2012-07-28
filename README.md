# Titan Graph Database Adapter for Pacer

[Pacer](https://github.com/pangloss/pacer) is a
[JRuby](http://jruby.org) graph traversal framework built on the
[Tinkerpop](http://www.tinkerpop.com) stack.

This plugin enables [Titan](http://thinkaurelius.github.com/titan/) graph
support in Pacer.


## Usage

Here is how you open a Titan graph in Pacer.

```ruby
require "pacer"
require "pacer-titan"

# Graph will be created if it doesn't exist
graph = Pacer.titan "path/to/graph"
```

All other operations are identical across graph implementations (except
where certain features are not supported). See Pacer"s documentation for
more information.

