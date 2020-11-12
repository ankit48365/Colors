### A Pluto.jl notebook ###
# v0.12.7

using Markdown
using InteractiveUtils

# ╔═╡ f5780e90-247d-11eb-04d0-75c1e456dc12
begin
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.add(["Images", "ImageIO", "ImageMagick", "TestImages"])
	Pkg.add("ColorTypes")
	using Images, ColorTypes
end

# ╔═╡ 3e6381c0-247e-11eb-0328-f37226f82f93
md"""Checkout Color_Lab.jl or Color Block jl file for more things, as how to download a image and details as such"""


# ╔═╡ 3e49b830-247e-11eb-3ea2-2573e0f9bdac
White1 = "D:\\MyGit\\Colors\\Images\\3by3_White.jpg"

# ╔═╡ cd12a1a0-2486-11eb-19eb-97b70a9160b8
Black1 = "D:\\MyGit\\Colors\\Images\\3by3_Black.jpg"

# ╔═╡ ccf8ff20-2486-11eb-039e-c9de29594cdf
Green1 = "D:\\MyGit\\Colors\\Images\\3by3_Green.jpg"

# ╔═╡ cce01ff0-2486-11eb-1798-79c44f5b9931
Red1 = "D:\\MyGit\\Colors\\Images\\3by3_Red.jpg"

# ╔═╡ 124906a0-2488-11eb-2fb2-d56a1f33c05c
Blacknw1 = "D:\\MyGit\\Colors\\Images\\3by3_Black&white.jpg"

# ╔═╡ 3e2fa080-247e-11eb-0ad9-5dd8644886f9
White01 = load(White1)

# ╔═╡ 44956b40-2487-11eb-0c5c-9fe206234318
Black01 = load(Black1)

# ╔═╡ 4458141e-2487-11eb-3f74-9d8aaf6d688f
Green01 = load(Green1)

# ╔═╡ 4408bba0-2487-11eb-3bd9-9f8f5cc2b5c7
Red01 = load(Red1)

# ╔═╡ 48f39fd2-2488-11eb-203b-470163c3153d
BnW01 = load(Blacknw1)

# ╔═╡ 9758b490-2487-11eb-1c56-3d65bbe388be
channelview(White01), [2,3,1]

# ╔═╡ 973b4180-2487-11eb-2007-eba73bee14d6
channelview(Black01), [2,3,1]

# ╔═╡ 971fca40-2487-11eb-168c-63c1fb2b6014
channelview(Green01), [2,3,1]

# ╔═╡ c7cc3eae-247f-11eb-3e1b-a31f6e1ce000
channelview(Red01), [2,3,1]

# ╔═╡ c79bb8d0-247f-11eb-3107-7b86ccb91b04
channelview(BnW01), [2,3,1]

# ╔═╡ c78327c0-247f-11eb-0020-09c5507187ba
BnW011 = load(Blacknw1)

# ╔═╡ c752a1e0-247f-11eb-246a-ffb8fb0dbae5
typeof(BnW011)

# ╔═╡ acaf1250-248f-11eb-347e-39cd376a6085
channelview(BnW01), [2,3,1]

# ╔═╡ ac93e930-248f-11eb-3285-f97594db68bc
red.(channelview(BnW01), [2,3,1])

# ╔═╡ ac79d180-248f-11eb-319b-0d04957afbf2


# ╔═╡ 9c361c80-248e-11eb-02fc-33e6ab8801bf
RGB(1, 0, 0)

# ╔═╡ 9c1b1a6e-248e-11eb-395c-db91bf6eee0a
[RGB(1, 0, 0) RGB(0, 1, 0);
 RGB(0, 0, 1) RGB(0, 0, 0)]

# ╔═╡ 9c00b4a0-248e-11eb-382f-e9b74cb77e12


# ╔═╡ 9be23020-248e-11eb-068a-3ba581ce11b6


# ╔═╡ 3de2e010-247e-11eb-38d8-6b8bffd99436
md"""http://blog.robindeits.com/2017/02/27/reading-raw-memory-with-julia/ """

# ╔═╡ 3dc8ef70-247e-11eb-376b-05ad5147ca85
md"""https://craftofcoding.wordpress.com/2017/03/25/plotting-image-histograms-with-julia/"""

# ╔═╡ 3db01042-247e-11eb-2f66-dfc3c4e9e7bc
md"""In julia, you can just say convert(Gray, rgb)"""

# ╔═╡ 3d950e30-247e-11eb-2fa2-f7f1c1bc5c7f


# ╔═╡ 3d7af680-247e-11eb-29ea-231b8b849389


# ╔═╡ 3d0c0810-247e-11eb-040c-77c7433ccedd


# ╔═╡ 3c636c00-247e-11eb-369c-cde034bcdd36


# ╔═╡ Cell order:
# ╠═f5780e90-247d-11eb-04d0-75c1e456dc12
# ╟─3e6381c0-247e-11eb-0328-f37226f82f93
# ╠═3e49b830-247e-11eb-3ea2-2573e0f9bdac
# ╠═cd12a1a0-2486-11eb-19eb-97b70a9160b8
# ╠═ccf8ff20-2486-11eb-039e-c9de29594cdf
# ╠═cce01ff0-2486-11eb-1798-79c44f5b9931
# ╠═124906a0-2488-11eb-2fb2-d56a1f33c05c
# ╠═3e2fa080-247e-11eb-0ad9-5dd8644886f9
# ╠═44956b40-2487-11eb-0c5c-9fe206234318
# ╠═4458141e-2487-11eb-3f74-9d8aaf6d688f
# ╠═4408bba0-2487-11eb-3bd9-9f8f5cc2b5c7
# ╠═48f39fd2-2488-11eb-203b-470163c3153d
# ╠═9758b490-2487-11eb-1c56-3d65bbe388be
# ╠═973b4180-2487-11eb-2007-eba73bee14d6
# ╠═971fca40-2487-11eb-168c-63c1fb2b6014
# ╠═c7cc3eae-247f-11eb-3e1b-a31f6e1ce000
# ╠═c79bb8d0-247f-11eb-3107-7b86ccb91b04
# ╠═c78327c0-247f-11eb-0020-09c5507187ba
# ╠═c752a1e0-247f-11eb-246a-ffb8fb0dbae5
# ╠═acaf1250-248f-11eb-347e-39cd376a6085
# ╠═ac93e930-248f-11eb-3285-f97594db68bc
# ╠═ac79d180-248f-11eb-319b-0d04957afbf2
# ╠═9c361c80-248e-11eb-02fc-33e6ab8801bf
# ╠═9c1b1a6e-248e-11eb-395c-db91bf6eee0a
# ╠═9c00b4a0-248e-11eb-382f-e9b74cb77e12
# ╠═9be23020-248e-11eb-068a-3ba581ce11b6
# ╟─3de2e010-247e-11eb-38d8-6b8bffd99436
# ╟─3dc8ef70-247e-11eb-376b-05ad5147ca85
# ╟─3db01042-247e-11eb-2f66-dfc3c4e9e7bc
# ╠═3d950e30-247e-11eb-2fa2-f7f1c1bc5c7f
# ╠═3d7af680-247e-11eb-29ea-231b8b849389
# ╠═3d0c0810-247e-11eb-040c-77c7433ccedd
# ╠═3c636c00-247e-11eb-369c-cde034bcdd36
