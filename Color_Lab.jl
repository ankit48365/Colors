### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ c35e0efe-100e-11eb-0f2f-178bcf665b41
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ ce8d10ae-100e-11eb-24b1-fb5b8786d728
begin
	Pkg.add(["Images", "ImageIO", "ImageMagick", "TestImages"])
	using Images
end

# ╔═╡ 26a3bca0-1013-11eb-0127-d30ccb95a826
md"""Saving a URL into Variable """

# ╔═╡ 111fb070-1011-11eb-0d49-2992c403e821
usflag = "https://foreres.files.wordpress.com/2010/04/small-american-flag.jpg"

# ╔═╡ 488c2820-1013-11eb-3aeb-597f0f1bf852
md"""Saving a URL variable to defined Location"""

# ╔═╡ 10e51870-1011-11eb-1781-3984a2cf5e94
US_Flag = download(usflag, "D:\\MyGit\\Colors\\Images\\US_Flag.jpg")

# ╔═╡ 8bba0860-1013-11eb-11f5-6dbba1917f11
md"""Opening the Image from the Saved Location"""

# ╔═╡ d16cb100-100e-11eb-1fb8-bf916eb323f1
US_Flag01 = load(US_Flag)

# ╔═╡ 9f3a4030-1013-11eb-2644-ef11c2ca7ab5
md"""Opening an image directly from Local Drive""" 

# ╔═╡ 09439860-1013-11eb-0f92-db4886864291
ank = load("D:\\MyGit\\Colors\\Images\\US_Flag.jpg")

# ╔═╡ d12f0bc0-100e-11eb-2a60-17ab6eedc7d8
size(US_Flag01)

# ╔═╡ d0f6bdb0-100e-11eb-0c1d-b9082d7c2489
typeof(US_Flag01)

# ╔═╡ dbd14f10-1014-11eb-0cfd-7389af14ac04
md"""Created this Function Below to bring down the size of a pic, dont know how it works"""

# ╔═╡ 9127ff3e-1014-11eb-1078-43ad4981916f
decimate(image, ratio=5) = image[1:ratio:end, 1:ratio:end]

# ╔═╡ d0881d60-100e-11eb-0886-1b0e3ac7b2ef
usflsmall = let
	original = Images.load("D:\\MyGit\\Colors\\Images\\US_Flag.jpg")
	decimate(original, 3)
end

# ╔═╡ 1435cd42-1015-11eb-2fee-4122e629b624
md"""US_Flag01 (150,150 ) size brought down to 50,50"""

# ╔═╡ c8c39a10-1012-11eb-321c-c5bd5e28f744
size(usflsmall)

# ╔═╡ fd9e9170-1014-11eb-29b4-77028101ab8f
usflsmall[20:30,10:20,1]

# ╔═╡ fd6977b0-1014-11eb-3e6c-adf2e39e42b4
usflsmall[25,25]

# ╔═╡ fd360ba0-1014-11eb-3a59-b7599a434aec


# ╔═╡ c890a32e-1012-11eb-2268-37b5474fac46


# ╔═╡ c85a29e0-1012-11eb-36f0-51dcefa74bc4


# ╔═╡ c81fb8ee-1012-11eb-00a8-75af624da43b


# ╔═╡ Cell order:
# ╠═c35e0efe-100e-11eb-0f2f-178bcf665b41
# ╠═ce8d10ae-100e-11eb-24b1-fb5b8786d728
# ╟─26a3bca0-1013-11eb-0127-d30ccb95a826
# ╠═111fb070-1011-11eb-0d49-2992c403e821
# ╟─488c2820-1013-11eb-3aeb-597f0f1bf852
# ╟─10e51870-1011-11eb-1781-3984a2cf5e94
# ╟─8bba0860-1013-11eb-11f5-6dbba1917f11
# ╟─d16cb100-100e-11eb-1fb8-bf916eb323f1
# ╟─9f3a4030-1013-11eb-2644-ef11c2ca7ab5
# ╠═09439860-1013-11eb-0f92-db4886864291
# ╠═d12f0bc0-100e-11eb-2a60-17ab6eedc7d8
# ╠═d0f6bdb0-100e-11eb-0c1d-b9082d7c2489
# ╟─dbd14f10-1014-11eb-0cfd-7389af14ac04
# ╟─9127ff3e-1014-11eb-1078-43ad4981916f
# ╠═d0881d60-100e-11eb-0886-1b0e3ac7b2ef
# ╟─1435cd42-1015-11eb-2fee-4122e629b624
# ╠═c8c39a10-1012-11eb-321c-c5bd5e28f744
# ╠═fd9e9170-1014-11eb-29b4-77028101ab8f
# ╠═fd6977b0-1014-11eb-3e6c-adf2e39e42b4
# ╠═fd360ba0-1014-11eb-3a59-b7599a434aec
# ╠═c890a32e-1012-11eb-2268-37b5474fac46
# ╠═c85a29e0-1012-11eb-36f0-51dcefa74bc4
# ╠═c81fb8ee-1012-11eb-00a8-75af624da43b
