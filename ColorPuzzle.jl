### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ 927bee40-2493-11eb-365b-bbd027f30802
begin
	import Pkg
	Pkg.add("Images")
	Pkg.add("ColorTypes")
	using Images
	using ColorTypes
end

# ╔═╡ 6f413930-2493-11eb-289e-d7b31dc10797
md"""http://blog.robindeits.com/2017/01/18/Chromesthesia/"""

# ╔═╡ c2e4f770-2493-11eb-309d-e589e348cecd


# ╔═╡ 92633620-2493-11eb-092f-1db008e4f2cf
img = "D:\\MyGit\\Colors\\Images\\3by3_Black&white.jpg"

# ╔═╡ 924a7e00-2493-11eb-1a2b-edcdfea00ba7
img1 = load(img)

# ╔═╡ 92303f40-2493-11eb-3aed-53ea36194900
show(img1)

# ╔═╡ 9218bfa2-2493-11eb-1eca-dbbe5e5e785c
R1M = red.(img1)

# ╔═╡ 91fdbd90-2493-11eb-0173-87763bb4bbca
B1M = blue.(img1)

# ╔═╡ 6ec6a010-2495-11eb-2fed-ef6e43d5e732
 G1M = green.(img1)

# ╔═╡ 6e93f750-2495-11eb-29b5-b91a48421361
RGB_SUM = R1M + B1M + G1M

# ╔═╡ 6e7aca00-2495-11eb-0951-351d318562c5


# ╔═╡ 6dda6b50-2495-11eb-24d5-6fe85c9d186a


# ╔═╡ Cell order:
# ╟─6f413930-2493-11eb-289e-d7b31dc10797
# ╠═c2e4f770-2493-11eb-309d-e589e348cecd
# ╠═927bee40-2493-11eb-365b-bbd027f30802
# ╠═92633620-2493-11eb-092f-1db008e4f2cf
# ╠═924a7e00-2493-11eb-1a2b-edcdfea00ba7
# ╠═92303f40-2493-11eb-3aed-53ea36194900
# ╠═9218bfa2-2493-11eb-1eca-dbbe5e5e785c
# ╠═91fdbd90-2493-11eb-0173-87763bb4bbca
# ╠═6ec6a010-2495-11eb-2fed-ef6e43d5e732
# ╠═6e93f750-2495-11eb-29b5-b91a48421361
# ╠═6e7aca00-2495-11eb-0951-351d318562c5
# ╠═6dda6b50-2495-11eb-24d5-6fe85c9d186a
