### A Pluto.jl notebook ###
# v0.19.14

using Markdown
using InteractiveUtils

# ╔═╡ 3ccb3874-ac7d-11ed-226c-f592a78e3d01
begin
    import Pkg
    # activate the shared project environment
    Pkg.activate(".")
    # instantiate, i.e. make sure that all packages are downloaded
    Pkg.instantiate()
end

# ╔═╡ 42292eb3-f26b-4adf-9bfd-c6f1a83f7b94
begin
	Pkg.add("Distributions")
	Pkg.add("PlutoUI")
	Pkg.add("Plots")
	Pkg.add("LaTeXStrings")
	Pkg.add("GLM")
	using Distributions
	using Plots
	using PlutoUI
	using LinearAlgebra
	using LaTeXStrings
	using GLM
end

# ╔═╡ 57d1983c-72bd-41c8-b41d-fe824e9bf2a3
begin
	Pkg.add("StatsModels")
	using StatsModels
end

# ╔═╡ 7fdf818c-9653-48b9-a92a-f5326b5ec35a
Pkg.add("DataFrames")

# ╔═╡ befed98d-7519-4ecd-b50f-aefd67ae3b89
using DataFrames

# ╔═╡ ac18a5bc-c325-4aef-b113-d53fb22e215b
# Generate some random data
n = 100

# ╔═╡ 191ca265-5ad7-451d-9f25-aad4152d678b
x1 = randn(n)

# ╔═╡ 596ebc24-3bec-4cda-a1dd-02bfcb03ae3d
x2 = randn(n)

# ╔═╡ eb57d1b7-524c-42d2-aee9-f9085ffe14c3
y = rand([0, 1], n)

# ╔═╡ 7b023a18-4523-40e0-8864-b0286900ef18
# Fit logistic regression model
model = glm(@formula(y ~ x1 + x2), Bernoulli(), DataFrame(x1=x1, x2=x2))

# ╔═╡ c0e2f47a-cce9-43e9-a6ae-34112ea45da6
glm()

# ╔═╡ dc8513d2-5031-442e-82f9-3ae41a96725c
# Make predictions on new data
x1_new = randn(10)

# ╔═╡ f2893419-4047-433f-ab2b-bc93e89c041e
x2_new = randn(10)

# ╔═╡ 05d838a6-e84d-440a-8d86-898a9a3269eb
y_pred = predict(model, DataFrame(x1=x1_new, x2=x2_new))

# ╔═╡ 98a9336f-09a6-4955-b0fb-9a96e552d653
# Print predicted probabilities
println(y_pred)

# ╔═╡ da5346e2-62e6-43ba-97da-1e05b3af5928


# ╔═╡ 2f1a8f01-a91c-4ae4-bbc2-cdaa34071bb9


# ╔═╡ a4c35de2-a4fc-4088-972d-246302b61df4


# ╔═╡ 88db2ee4-eb2e-41c1-a965-8eaa4f6c18d8


# ╔═╡ eb8a3056-71aa-4c79-8ab8-475ca3f37749


# ╔═╡ Cell order:
# ╠═3ccb3874-ac7d-11ed-226c-f592a78e3d01
# ╠═42292eb3-f26b-4adf-9bfd-c6f1a83f7b94
# ╠═57d1983c-72bd-41c8-b41d-fe824e9bf2a3
# ╠═ac18a5bc-c325-4aef-b113-d53fb22e215b
# ╠═191ca265-5ad7-451d-9f25-aad4152d678b
# ╠═596ebc24-3bec-4cda-a1dd-02bfcb03ae3d
# ╠═eb57d1b7-524c-42d2-aee9-f9085ffe14c3
# ╠═7fdf818c-9653-48b9-a92a-f5326b5ec35a
# ╠═befed98d-7519-4ecd-b50f-aefd67ae3b89
# ╠═7b023a18-4523-40e0-8864-b0286900ef18
# ╠═c0e2f47a-cce9-43e9-a6ae-34112ea45da6
# ╠═dc8513d2-5031-442e-82f9-3ae41a96725c
# ╠═f2893419-4047-433f-ab2b-bc93e89c041e
# ╠═05d838a6-e84d-440a-8d86-898a9a3269eb
# ╠═98a9336f-09a6-4955-b0fb-9a96e552d653
# ╠═da5346e2-62e6-43ba-97da-1e05b3af5928
# ╠═2f1a8f01-a91c-4ae4-bbc2-cdaa34071bb9
# ╠═a4c35de2-a4fc-4088-972d-246302b61df4
# ╠═88db2ee4-eb2e-41c1-a965-8eaa4f6c18d8
# ╠═eb8a3056-71aa-4c79-8ab8-475ca3f37749
