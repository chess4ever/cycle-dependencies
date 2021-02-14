# Cycle

This example illustrates transitive compile dependency between modules.

In `xref_graph.png` you can see visually the dependency graph of this example project.

Try to update any of the modules (for example with the `touch` command) and recompile to see
which modules get recompiled. In the article you will read about how `inotifywait` can be helpful to
see exactly which modules get recompiled. And `mix xref` can be usufel to see the dependency graph and the types
of dependency between modules.

If you update `Mod4` which is a leaf in the dependency graph, only two modules will be recompiled,
`Mod4` and `Mod3`. The latter one will be recompiled because there is a dependency path from it to the updated module,
and also because it is a sink for a compile dependency edge.



# For further explanations
See this wonderful [article](https://milhouse.dev/2016/08/11/understanding-elixir-recompilation/)
or this [talk](https://www.youtube.com/watch?v=hqaxMZAwbBA) by Renan Ranelli.


