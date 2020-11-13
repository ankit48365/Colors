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

# ╔═╡ 59fa9500-255e-11eb-0951-bbdbeb5c013d
md"""below will display a pixel of an image"""

# ╔═╡ 2705d7e0-255e-11eb-2f48-b7a48c280ddf
CD = BnW01[1,2]

# ╔═╡ 74ec9f70-255e-11eb-240f-cd14eca7c3d2
dump(c24)

# ╔═╡ 74d2aed0-255e-11eb-112d-256463b71abe
c24.color

# ╔═╡ 26d048f0-255e-11eb-308d-69e7a209938e
RGB24(RGB(1, 0, 0)).color

# ╔═╡ 32f91e80-255f-11eb-022f-d94070720a5f
s,d = size(BnW01)

# ╔═╡ 3233aba0-255f-11eb-2605-bfbe991e6337
begin 
	 W01[1:s, 1:d] .= RGB24(BnW01[1:s, 1:d]).color
end

# ╔═╡ 6b882f20-255f-11eb-32a7-b7763bb7cb17
RGB24(BnW01).color

# ╔═╡ 6b6e3e80-255f-11eb-2cc9-cb60bafc3512


# ╔═╡ 6b5649b0-255f-11eb-10ba-c766f8e6c4cd


# ╔═╡ 26b51fd0-255e-11eb-0be7-39c12681a6bb
begin 
	Dhwaj2 = copy(Tricolor)
	Dhwaj2[70:90, 70:110] .= RGB(0, 1, 1)
	Dhwaj2
end

# ╔═╡ 2698e540-255e-11eb-2306-6996fa3150f8


# ╔═╡ 26800612-255e-11eb-362e-c7b1e43fb2a6


# ╔═╡ ac79d180-248f-11eb-319b-0d04957afbf2


# ╔═╡ e4d06160-255d-11eb-3f63-490f5332f468


# ╔═╡ e4b5ad70-255d-11eb-1648-7730c93b2e33


# ╔═╡ e49a844e-255d-11eb-3135-79f1bcb5ad8a


# ╔═╡ e4817e10-255d-11eb-007e-41de1bb4d68c


# ╔═╡ e263f540-255d-11eb-15c1-438852517e77


# ╔═╡ e248cc20-255d-11eb-3cd7-dbfa1460d37f


# ╔═╡ e22edb80-255d-11eb-09fe-aff782cd12bf


# ╔═╡ e22eb470-255d-11eb-190b-bf34def0f996


# ╔═╡ e1ffdc40-255d-11eb-0c3b-7198c874ff3a


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
md"""https://docs.julialang.org/en/v1/base/numbers/"""

# ╔═╡ 3d7af680-247e-11eb-29ea-231b8b849389
md"""https://github.com/JuliaGraphics/ColorTypes.jl"""

# ╔═╡ 3d0c0810-247e-11eb-040c-77c7433ccedd


# ╔═╡ 3c636c00-247e-11eb-369c-cde034bcdd36


# ╔═╡ 584766c0-255e-11eb-03be-b17de3aacabc
c24 = RGB24(c); dump(c24)

# ╔═╡ 75069010-255e-11eb-0bbd-f9f4a97cc8f6
c24 = RGB24(CD)

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
# ╟─59fa9500-255e-11eb-0951-bbdbeb5c013d
# ╠═2705d7e0-255e-11eb-2f48-b7a48c280ddf
# ╠═75069010-255e-11eb-0bbd-f9f4a97cc8f6
# ╠═74ec9f70-255e-11eb-240f-cd14eca7c3d2
# ╠═74d2aed0-255e-11eb-112d-256463b71abe
# ╠═584766c0-255e-11eb-03be-b17de3aacabc
# ╠═26d048f0-255e-11eb-308d-69e7a209938e
# ╠═32f91e80-255f-11eb-022f-d94070720a5f
# ╠═3233aba0-255f-11eb-2605-bfbe991e6337
# ╠═6b882f20-255f-11eb-32a7-b7763bb7cb17
# ╠═6b6e3e80-255f-11eb-2cc9-cb60bafc3512
# ╠═6b5649b0-255f-11eb-10ba-c766f8e6c4cd
# ╠═26b51fd0-255e-11eb-0be7-39c12681a6bb
# ╠═2698e540-255e-11eb-2306-6996fa3150f8
# ╠═26800612-255e-11eb-362e-c7b1e43fb2a6
# ╠═ac79d180-248f-11eb-319b-0d04957afbf2
# ╠═e4d06160-255d-11eb-3f63-490f5332f468
# ╠═e4b5ad70-255d-11eb-1648-7730c93b2e33
# ╠═e49a844e-255d-11eb-3135-79f1bcb5ad8a
# ╠═e4817e10-255d-11eb-007e-41de1bb4d68c
# ╠═e263f540-255d-11eb-15c1-438852517e77
# ╠═e248cc20-255d-11eb-3cd7-dbfa1460d37f
# ╠═e22edb80-255d-11eb-09fe-aff782cd12bf
# ╠═e22eb470-255d-11eb-190b-bf34def0f996
# ╠═e1ffdc40-255d-11eb-0c3b-7198c874ff3a
# ╠═9c361c80-248e-11eb-02fc-33e6ab8801bf
# ╠═9c1b1a6e-248e-11eb-395c-db91bf6eee0a
# ╠═9c00b4a0-248e-11eb-382f-e9b74cb77e12
# ╠═9be23020-248e-11eb-068a-3ba581ce11b6
# ╟─3de2e010-247e-11eb-38d8-6b8bffd99436
# ╟─3dc8ef70-247e-11eb-376b-05ad5147ca85
# ╟─3db01042-247e-11eb-2f66-dfc3c4e9e7bc
# ╟─3d950e30-247e-11eb-2fa2-f7f1c1bc5c7f
# ╟─3d7af680-247e-11eb-29ea-231b8b849389
# ╠═3d0c0810-247e-11eb-040c-77c7433ccedd
# ╠═3c636c00-247e-11eb-369c-cde034bcdd36
