sets=(
    largest_clique_number,largest_cliques_set
)
for f in sets
    suite[string(f)] = BenchmarkGroup(["set"])
    suite[string(f)]["graphs"] = BenchmarkGroup()
    for (name,g) in GRAPHS
        suite[string(f)]["graphs"][name] = @benchmarkable $(f)($g)
    end
end