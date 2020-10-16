### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 920fb510-0ff1-11eb-0397-7524b4e260df
md"""
## Arrays Basics
-https://www.youtube.com/watch?v=CwDI-YOjWhc
"""

# ╔═╡ a2689530-0ff1-11eb-237b-2191e0d0e553
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ a23ddbb0-0ff1-11eb-13ed-39ac3383e3f7
begin
	Pkg.add(["Images", "ImageIO", "ImageMagick", "TestImages"])
	using Images
end

# ╔═╡ a22300b0-0ff1-11eb-0d31-7d1ee193c63c
	md"""Vector and array
- Defining, Type of and Size"""

# ╔═╡ a5f899c0-0ff1-11eb-33a9-c136cfa99b88
v = [1,2,3,4,5,6] # this is vector

# ╔═╡ 8b4e34c0-0ff3-11eb-1bcb-532ae49a59ed
typeof(v)

# ╔═╡ ac6b39f0-0ff3-11eb-19f3-dd8175b61e78
size(v)

# ╔═╡ 9369dbf2-0ff3-11eb-332f-cf47ac906f54
A = [4 5 6
	 9 8 3
     9 2 6]

# ╔═╡ 932e3280-0ff3-11eb-0ca8-596fcd6efe47
typeof(A)

# ╔═╡ cc5cb770-0ff3-11eb-3e5f-67172078918e
size(A)

# ╔═╡ a5e38b1e-0ff1-11eb-2d07-594e1017073f
md"""Below demonstrating selecint an emlement, range, row or column"""

# ╔═╡ a5cecaa0-0ff1-11eb-3b69-c9888018ec53
A[5] # picks element on a position

# ╔═╡ e7bdbae0-0ff4-11eb-2642-e193e1676378
A[:,2] # second column, all element

# ╔═╡ e75d9980-0ff4-11eb-0db5-29f2c9f220a4
A[3,:] # third row, all element

# ╔═╡ e70feeb0-0ff4-11eb-201a-1bce59f47b9b
A[2:3, :] # small matrix

# ╔═╡ 80066900-0ff5-11eb-1320-89d3e6476de4
A[:, 2:3] # small matrix

# ╔═╡ a5b96de2-0ff1-11eb-0e90-51478ea0c709
md"""
## Colors"""

# ╔═╡ a590b030-0ff1-11eb-1bc9-89f29eac464c
md"""Distinguishable Colors - provide the number to increase the radom"""

# ╔═╡ a57c64e0-0ff1-11eb-0d67-7390aed58a41
C1 = distinguishable_colors(3)

# ╔═╡ 2e4530f0-0ff6-11eb-283a-5fdcd7e53ef8
C2 = distinguishable_colors(4)

# ╔═╡ 2dfbcbe2-0ff6-11eb-37fe-fbf8dc60a211
C3 = distinguishable_colors(5)

# ╔═╡ a5672f30-0ff1-11eb-135b-4d6522f840ed
md"""Creating a Matrix of random Colors"""

# ╔═╡ a551ab60-0ff1-11eb-1f74-c36932fccd40
Z1 = rand(C2, 15,15)

# ╔═╡ 6c0ffa50-0ff6-11eb-0268-97c6f27d87f3
Z2 = rand(C3,8,8)

# ╔═╡ a5282a60-0ff1-11eb-3c52-97f5dc063a5f
md"""bind Slider"""

# ╔═╡ a51369e0-0ff1-11eb-35da-e5462d420967
@bind x html"<input type=range min=1 max=150>"

# ╔═╡ 50ace920-0ff7-11eb-205b-118b6c1d7e79
Z3 = rand(C3,x,x)

# ╔═╡ a5014170-0ff1-11eb-2bb3-a71e24fc2432
md"""--"""

# ╔═╡ a4ee0790-0ff1-11eb-09b6-23ced091f2ad


# ╔═╡ a4d79960-0ff1-11eb-1016-f5306d2483e1
md"""--"""

# ╔═╡ a4adf150-0ff1-11eb-2e2a-2dbf2787c70f


# ╔═╡ a4953930-0ff1-11eb-05c5-7deb20dc7af1
md"""--"""

# ╔═╡ Cell order:
# ╟─920fb510-0ff1-11eb-0397-7524b4e260df
# ╠═a2689530-0ff1-11eb-237b-2191e0d0e553
# ╠═a23ddbb0-0ff1-11eb-13ed-39ac3383e3f7
# ╠═a22300b0-0ff1-11eb-0d31-7d1ee193c63c
# ╠═a5f899c0-0ff1-11eb-33a9-c136cfa99b88
# ╠═8b4e34c0-0ff3-11eb-1bcb-532ae49a59ed
# ╠═ac6b39f0-0ff3-11eb-19f3-dd8175b61e78
# ╠═9369dbf2-0ff3-11eb-332f-cf47ac906f54
# ╠═932e3280-0ff3-11eb-0ca8-596fcd6efe47
# ╠═cc5cb770-0ff3-11eb-3e5f-67172078918e
# ╟─a5e38b1e-0ff1-11eb-2d07-594e1017073f
# ╠═a5cecaa0-0ff1-11eb-3b69-c9888018ec53
# ╠═e7bdbae0-0ff4-11eb-2642-e193e1676378
# ╠═e75d9980-0ff4-11eb-0db5-29f2c9f220a4
# ╠═e70feeb0-0ff4-11eb-201a-1bce59f47b9b
# ╠═80066900-0ff5-11eb-1320-89d3e6476de4
# ╟─a5b96de2-0ff1-11eb-0e90-51478ea0c709
# ╠═a590b030-0ff1-11eb-1bc9-89f29eac464c
# ╠═a57c64e0-0ff1-11eb-0d67-7390aed58a41
# ╠═2e4530f0-0ff6-11eb-283a-5fdcd7e53ef8
# ╠═2dfbcbe2-0ff6-11eb-37fe-fbf8dc60a211
# ╟─a5672f30-0ff1-11eb-135b-4d6522f840ed
# ╠═a551ab60-0ff1-11eb-1f74-c36932fccd40
# ╠═6c0ffa50-0ff6-11eb-0268-97c6f27d87f3
# ╟─a5282a60-0ff1-11eb-3c52-97f5dc063a5f
# ╠═a51369e0-0ff1-11eb-35da-e5462d420967
# ╠═50ace920-0ff7-11eb-205b-118b6c1d7e79
# ╠═a5014170-0ff1-11eb-2bb3-a71e24fc2432
# ╠═a4ee0790-0ff1-11eb-09b6-23ced091f2ad
# ╠═a4d79960-0ff1-11eb-1016-f5306d2483e1
# ╠═a4adf150-0ff1-11eb-2e2a-2dbf2787c70f
# ╠═a4953930-0ff1-11eb-05c5-7deb20dc7af1
