### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ 67e41500-261d-11eb-2c0a-a73f5fa0b717
begin
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.add(["Images", "ImageIO", "ImageMagick", "TestImages"])
	Pkg.add("ColorTypes")
	using Images, ColorTypes, Colors
end

# ╔═╡ d74d4100-2622-11eb-15ea-5d5b62231ac6
md""""https://juliaimages.org/stable/tutorials/arrays_colors/"""

# ╔═╡ c4ce73a0-2622-11eb-0429-f30ed1a33adc
md"""## Arrays"""

# ╔═╡ 623030f0-261b-11eb-1b0f-2dac8ca7ec47
md""" Create a simple Array - and notice, how you create the values defines its structure aswell INT vs FLOAT """

# ╔═╡ 6215cb20-261b-11eb-0e10-4126a5ceca5e
a = [1,2,3,4,5,6]

# ╔═╡ ecd11532-261b-11eb-384e-9b55e367b0b5
b = [1.0,2.0,3.0,4.0]

# ╔═╡ 372fa060-261c-11eb-2388-67483442e0e4
c = [rand(3)]

# ╔═╡ fa80ca20-2622-11eb-3d55-4dda95db6540
md"""## Gray"""

# ╔═╡ 75082ff0-261d-11eb-289e-6fc19c439eb5
md"""Create Random image for 4by4"""

# ╔═╡ 74ed2de0-261d-11eb-1bcf-e39d81baa116
imc = rand(4,4)

# ╔═╡ 74d475c0-261d-11eb-190b-59c46feeba2f
typeof(imc)

# ╔═╡ 74b8fe80-261d-11eb-337a-ef4a01e023e4
size(imc)

# ╔═╡ ef0105d0-2621-11eb-1510-95272847ae5d
sizeof(imc)

# ╔═╡ 749f0de2-261d-11eb-1965-1debd418009b
imc0 = Gray.(imc)

# ╔═╡ facac0e0-2621-11eb-3e86-351d639411cb
sizeof(imc)

# ╔═╡ 3979f6d0-2622-11eb-2445-4b7c71a0bd97
sizeof(imc0)

# ╔═╡ 3ed14de0-2622-11eb-3c91-7704e9f9e175
md"""imc and imc0 are still the same, Gray in imc0 is just saying to interprate it as colors hence below is true aswell"""

# ╔═╡ 5dc7f09e-2622-11eb-1311-7fed95367a66
imc == imc0

# ╔═╡ 63da5720-261e-11eb-372d-0389d2da3480
md"""Under the hood, what is Gray doing? It's informative to see the "raw" object, displayed as text:"""

# ╔═╡ 63c2d780-261e-11eb-0664-cda7f36a91a7
display(MIME("text/plain"),imc0)

# ╔═╡ 63aa1f60-261e-11eb-2cfa-81e2e8b5ff91
md"""so the above command will show result on command line or REPL , what it will show is, with every value in float in the array, it will show its true form as Gray{Float64}"""

# ╔═╡ 639278b0-261e-11eb-03f8-03c675bfac17
dump(imc0[1,1])

# ╔═╡ 61fac910-261b-11eb-1e3c-37a44569b98c
md""" above command again only works either on ijulia, or repl or command line - o/p would be like:::
- julia> dump(imc2[1,1])
- Gray{Float64}
- val: Float64 0.26014202162736244"""

# ╔═╡ 61df9ff0-261b-11eb-1a66-39eee1b59bb7
md"""dump shows the "internal" representation of an object. You can see that Gray is a type (technically, an immutable struct) with a single field val; for Gray{Float64}, val is a 64-bit floating point number. Using val directly is not recommended: you can extract the Float64 value with the accessor functions real or gray (the reason for the latter name will be clearer when we discuss RGB colors).  """

# ╔═╡ 61c33e50-261b-11eb-2626-872a0a6ca404
md"""## Color  """

# ╔═╡ 61aa5f20-261b-11eb-3d88-5d6aee1887a8
md""" Just like Gray above, lets create Colors """

# ╔═╡ 1ba4ad20-2623-11eb-389b-6dcae19e4231
imgCo = rand(RGB{Float32}, 4,4)

# ╔═╡ 618bb38e-261b-11eb-22d4-0103c306cd44
md""" just like gray in REPL or ijulia, you can see actual value by 2 below ways::
- 
- julia> imgc
- 2×2 Array{ColorTypes.RGB{Float32},2}:
- RGB{Float32}(0.75509,0.965058,0.65486)     RGB{Float32}(0.696203,0.142474,0.783316)
- RGB{Float32}(0.705195,0.953892,0.0744661)  RGB{Float32}(0.571945,0.42736,0.548254)
-
-julia> size(imgc)
-(2,2)
-
-julia> dump(imgc[1,1])
-ColorTypes.RGB{Float32}
-  r: Float32 0.7550899
-  g: Float32 0.9650581
-  b: Float32 0.65485954  """

# ╔═╡ 61708a70-261b-11eb-297b-fd97c2c077ce
md""" ## Changing the Color System
 - Gray to RGB to single 32 bit integer to Hexadecmimal"""

# ╔═╡ 52455f10-2843-11eb-265b-c1322c5ca60c
typeof(imgCo)

# ╔═╡ d504c5b0-2624-11eb-186c-3bbcf1fb6646
Z = imgCo[1,1]

# ╔═╡ 4267b3b0-2625-11eb-193e-a7df86622626
typeof(Z)

# ╔═╡ d4eeccb0-2624-11eb-16eb-a3ef4a77dae8
md"""into a single 32-bit integer:"""

# ╔═╡ d4d4dc0e-2624-11eb-33d6-79244672bd17
Z32 = RGB24(Z)

# ╔═╡ d4ba9d50-2624-11eb-3229-396f5dbe1c2b
typeof(Z32)

# ╔═╡ 61564bb0-261b-11eb-10c5-bf695b1057be
md"""the above operation was for just one pixel, can we do for all the image at once, without using any loop, lets try  """

# ╔═╡ acf47740-2625-11eb-2e08-0b417cd3168d
Zz = imgCo

# ╔═╡ acdbbf20-2625-11eb-1dbf-5b3c9500349a
size(Zz)

# ╔═╡ acc3551e-2625-11eb-186d-2fba05178818
typeof(Zz)

# ╔═╡ c9532720-2840-11eb-17f8-c1e7c3c40bc4
h24 = (ColorTypes.RGB24,4,4)

# ╔═╡ 8a457620-2843-11eb-3523-5d9e02a7be18
 YAY9 = parse.(UInt32, hex.(Zz, :RRGGBBAA), base=16)

# ╔═╡ ac6e3980-2a05-11eb-2943-ab113feb9d24
YAY9_chop = parse.(UInt32, hex.(Zz, :RRGGBB), base=16)

# ╔═╡ 38e18a40-29fa-11eb-3207-bfc24ffd9794
YAY91 = reshape(YAY9, (1,16))

# ╔═╡ 38c6fd60-29fa-11eb-16dc-71c3addb6d1e
YAY92 = chomp(str)

# ╔═╡ 38ad33d0-29fa-11eb-0963-75596aa85cac


# ╔═╡ 38ace5b0-29fa-11eb-3d71-09e0b16dce31


# ╔═╡ 387d7140-29fa-11eb-00ff-abdaad584701


# ╔═╡ 613b2290-261b-11eb-163a-716d474caac2
md"""## Our Numbers 0-9 makes the basic Base 10 number system  """

# ╔═╡ 612131f0-261b-11eb-1531-6151f1d6b715
md"""  """

# ╔═╡ 61074150-261b-11eb-02d1-f93b12397a68
md"""  """

# ╔═╡ 60eb06c0-261b-11eb-2f83-adeeaa2d6a62
md"""  """

# ╔═╡ 60cfdda0-261b-11eb-2e5b-81d9cfc01784
md"""  """

# ╔═╡ 60a3eba0-261b-11eb-29d8-75120afc6142
md"""  """

# ╔═╡ Cell order:
# ╟─d74d4100-2622-11eb-15ea-5d5b62231ac6
# ╟─c4ce73a0-2622-11eb-0429-f30ed1a33adc
# ╠═67e41500-261d-11eb-2c0a-a73f5fa0b717
# ╟─623030f0-261b-11eb-1b0f-2dac8ca7ec47
# ╠═6215cb20-261b-11eb-0e10-4126a5ceca5e
# ╠═ecd11532-261b-11eb-384e-9b55e367b0b5
# ╠═372fa060-261c-11eb-2388-67483442e0e4
# ╟─fa80ca20-2622-11eb-3d55-4dda95db6540
# ╟─75082ff0-261d-11eb-289e-6fc19c439eb5
# ╠═74ed2de0-261d-11eb-1bcf-e39d81baa116
# ╠═74d475c0-261d-11eb-190b-59c46feeba2f
# ╠═74b8fe80-261d-11eb-337a-ef4a01e023e4
# ╠═ef0105d0-2621-11eb-1510-95272847ae5d
# ╠═749f0de2-261d-11eb-1965-1debd418009b
# ╠═facac0e0-2621-11eb-3e86-351d639411cb
# ╠═3979f6d0-2622-11eb-2445-4b7c71a0bd97
# ╟─3ed14de0-2622-11eb-3c91-7704e9f9e175
# ╠═5dc7f09e-2622-11eb-1311-7fed95367a66
# ╟─63da5720-261e-11eb-372d-0389d2da3480
# ╠═63c2d780-261e-11eb-0664-cda7f36a91a7
# ╟─63aa1f60-261e-11eb-2cfa-81e2e8b5ff91
# ╠═639278b0-261e-11eb-03f8-03c675bfac17
# ╟─61fac910-261b-11eb-1e3c-37a44569b98c
# ╟─61df9ff0-261b-11eb-1a66-39eee1b59bb7
# ╟─61c33e50-261b-11eb-2626-872a0a6ca404
# ╟─61aa5f20-261b-11eb-3d88-5d6aee1887a8
# ╠═1ba4ad20-2623-11eb-389b-6dcae19e4231
# ╟─618bb38e-261b-11eb-22d4-0103c306cd44
# ╟─61708a70-261b-11eb-297b-fd97c2c077ce
# ╠═52455f10-2843-11eb-265b-c1322c5ca60c
# ╠═d504c5b0-2624-11eb-186c-3bbcf1fb6646
# ╠═4267b3b0-2625-11eb-193e-a7df86622626
# ╟─d4eeccb0-2624-11eb-16eb-a3ef4a77dae8
# ╠═d4d4dc0e-2624-11eb-33d6-79244672bd17
# ╠═d4ba9d50-2624-11eb-3229-396f5dbe1c2b
# ╟─61564bb0-261b-11eb-10c5-bf695b1057be
# ╠═acf47740-2625-11eb-2e08-0b417cd3168d
# ╠═acdbbf20-2625-11eb-1dbf-5b3c9500349a
# ╠═acc3551e-2625-11eb-186d-2fba05178818
# ╠═c9532720-2840-11eb-17f8-c1e7c3c40bc4
# ╠═8a457620-2843-11eb-3523-5d9e02a7be18
# ╠═ac6e3980-2a05-11eb-2943-ab113feb9d24
# ╠═38e18a40-29fa-11eb-3207-bfc24ffd9794
# ╠═38c6fd60-29fa-11eb-16dc-71c3addb6d1e
# ╠═38ad33d0-29fa-11eb-0963-75596aa85cac
# ╠═38ace5b0-29fa-11eb-3d71-09e0b16dce31
# ╠═387d7140-29fa-11eb-00ff-abdaad584701
# ╠═613b2290-261b-11eb-163a-716d474caac2
# ╠═612131f0-261b-11eb-1531-6151f1d6b715
# ╠═61074150-261b-11eb-02d1-f93b12397a68
# ╠═60eb06c0-261b-11eb-2f83-adeeaa2d6a62
# ╠═60cfdda0-261b-11eb-2e5b-81d9cfc01784
# ╠═60a3eba0-261b-11eb-29d8-75120afc6142
