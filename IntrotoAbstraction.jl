### A Pluto.jl notebook ###
# v0.12.4

using Markdown
using InteractiveUtils

# ╔═╡ cd661db2-0fde-11eb-30b0-df84785200a4
md"""
## Introduction to abstraction
- Abstraction is the process of hiding the details. Here we play with matrices of various types of elements, and show an example of abstraction where the mechanics of arrays is hidden from the mechanics of elements stored in the arrays.
- https://www.youtube.com/watch?v=foN1_hAGfNg
"""

# ╔═╡ f2522c40-0fde-11eb-12f2-c16e2a50ee02
	md"""	Creating an Array
-Notice - Value assigned to Element decides whether its Float of Integeer
"""

# ╔═╡ f23ef262-0fde-11eb-3770-4fe3e2e3a22f
element = 1

# ╔═╡ f220e310-0fde-11eb-3e91-1f8844c3a09b
	md"""now use this element in an array of 3by4"""

# ╔═╡ f20c97c0-0fde-11eb-0d65-43d676f26b8f
fill(element,3,4)

# ╔═╡ f1fba7ce-0fde-11eb-0b31-c50aa56730fc
	md"""Run type of command to see it data type"""

# ╔═╡ f1d3fb90-0fde-11eb-2fd0-6b4de2c6f079
typeof(element)

# ╔═╡ f1bf8930-0fde-11eb-0ad9-e39de1fcb0f9
	md"""Repeating the whole steps above this time as Float...watch"""

# ╔═╡ f1ae7230-0fde-11eb-3eb5-c7940bd9af8b
element01 = 1.0

# ╔═╡ f794c600-0fe2-11eb-11e4-15daa9f0b60a
fill(element01,3,4)

# ╔═╡ ffcea390-0fe2-11eb-1a3b-191c7f621105
typeof(element01)

# ╔═╡ f19a4df2-0fde-11eb-0bcc-73bbc9df9ec4
	md"""Below is very Important - below 2 commands do the same thing, but putting a comma makes it a vector and without comma makes it a array"""

# ╔═╡ f184ca20-0fde-11eb-3438-e1e2cf1ea97a
How_you_Make_Array = [1 1]

# ╔═╡ 9eabc730-0fe4-11eb-32e7-35867c6fd643
typeof(How_you_Make_Array)

# ╔═╡ 270fa930-0fe4-11eb-2446-5102fab49ac4
How_you_make_Vector = [1, 1]

# ╔═╡ 9dad6a00-0fe4-11eb-3465-b1fbcdefa2c8
typeof(How_you_make_Vector)

# ╔═╡ f16e5bf0-0fde-11eb-0843-eb66ae5e4ab3
	md"""Going back to our Element examples now"""

# ╔═╡ 4b308310-0fe5-11eb-2d54-a3c7b7f673b7
	md"""Same experiment with Strings ----"""

# ╔═╡ f1529690-0fde-11eb-0a49-b76a8afd8d29
element02 = "Hello"

# ╔═╡ 37dbc810-0fe5-11eb-29f6-cbdb796e3ff7
fill(element02,3,4)

# ╔═╡ 43ef0f40-0fe5-11eb-04c6-6f464fea37ec
typeof(element02)

# ╔═╡ f13b16f0-0fde-11eb-10dd-89a346d0ebfa
	md"""Same experiment with Rational --"""

# ╔═╡ f13327b0-0fde-11eb-3be5-8d3161ee2526
element03 = 1//1

# ╔═╡ 88746930-0fe5-11eb-37ba-fde0567d3584
fill(element03,3,4)

# ╔═╡ 88521420-0fe5-11eb-0b63-1f00a7558ebf
typeof(element03)

# ╔═╡ f0e46b70-0fde-11eb-101a-a35aff79f234
	md"""Showing them all together"""

# ╔═╡ f0bff37e-0fde-11eb-31df-8d0b8f5e0234
KeepTrack = [typeof(element), typeof(element01), typeof(element02), typeof(element03)]

# ╔═╡ f0aa96c0-0fde-11eb-2c6b-0f0a05260f8d
	md"""Can even see the type of KeepTrack, which will reveal it is a vector holding DataTypes"""

# ╔═╡ f090cd32-0fde-11eb-27ee-11b56e69b4b0
typeof(KeepTrack)

# ╔═╡ f07a8610-0fde-11eb-3047-4de6b9727e21
	md"""Lets see , if we can do the same on an image, before that load the required package"""

# ╔═╡ f7a62e50-0fe6-11eb-0ccc-e55edd0613b3
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ f05af020-0fde-11eb-12a3-915d7357a483
begin
	Pkg.add(["Images", "ImageIO", "ImageMagick", "TestImages"])
	using Images
end

# ╔═╡ f05ac910-0fde-11eb-1df2-a104c15a70bd
	md"""Download the Image"""

# ╔═╡ f0297fe0-0fde-11eb-33ee-2b7820d58ab3
thumpsup = "https://cdn1.sportngin.com/attachments/text_block/1723/1679/thumbs-up_small.png"

# ╔═╡ 3d3752ee-0fe7-11eb-2a47-f5e6e1c3a6b7
thumps = download(thumpsup, "Thumps_Image45.png")

# ╔═╡ 3d2307a0-0fe7-11eb-0cec-f93b5d63d8f0
ThumpsUp_01 = load(thumps)

# ╔═╡ 3d0c7260-0fe7-11eb-30ed-e95e8d2f1b3b
	md"""Beack to same thing, let create an array of it"""

# ╔═╡ 3cf9fbd0-0fe7-11eb-0135-19b0d155013c
element04 = ThumpsUp_01

# ╔═╡ 484a24a0-0fe8-11eb-2c66-a5a1f436af7e
fill(element04,3,4)

# ╔═╡ 59bcb220-0fe8-11eb-3f6b-c19546af91b8
KeepTrack1 = [typeof(element), typeof(element01), typeof(element02), typeof(element03), typeof(element04)]

# ╔═╡ 3ce36690-0fe7-11eb-226f-030d85b25e99
	md"""Last experimt was element as an Array, i can create an array of an array, by saying element05 = 2,3 4,5 something like that"""

# ╔═╡ 3cd2769e-0fe7-11eb-0cba-0144726b8b1e


# ╔═╡ 3cbbba50-0fe7-11eb-163c-afcb64398fe2
	md"""-------------------------"""

# ╔═╡ 3ca76f00-0fe7-11eb-0b72-37ebb4860d54


# ╔═╡ 3c94351e-0fe7-11eb-3170-3ff3c844cd4f
	md"""-------------------------"""

# ╔═╡ 3c7d9fde-0fe7-11eb-0746-9b56023f22b4


# ╔═╡ 1f08c5b0-0fe8-11eb-0741-b3d568e15342
	md"""-------------------------"""

# ╔═╡ 1ef5b2e0-0fe8-11eb-1f12-09dbbfec87e2


# ╔═╡ 1ee0a440-0fe8-11eb-12f4-8164440fa6b7
	md"""-------------------------"""

# ╔═╡ 1ec88860-0fe8-11eb-13de-530273037934


# ╔═╡ 1ea548f0-0fe8-11eb-1512-d14aaf5b6e43
	md"""-------------------------"""

# ╔═╡ 1e920f10-0fe8-11eb-0a99-9be2826c2e20


# ╔═╡ 1e7fbf90-0fe8-11eb-2510-1fcb2efc537f


# ╔═╡ 1e69c690-0fe8-11eb-1c05-713de2e85f8f


# ╔═╡ 1e54b7f0-0fe8-11eb-17d7-7d838b63f38c


# ╔═╡ 1e4352ce-0fe8-11eb-2198-addfa7f7cf92


# ╔═╡ 1e29d760-0fe8-11eb-1dab-8ff26e1cb786


# ╔═╡ Cell order:
# ╟─cd661db2-0fde-11eb-30b0-df84785200a4
# ╟─f2522c40-0fde-11eb-12f2-c16e2a50ee02
# ╠═f23ef262-0fde-11eb-3770-4fe3e2e3a22f
# ╟─f220e310-0fde-11eb-3e91-1f8844c3a09b
# ╠═f20c97c0-0fde-11eb-0d65-43d676f26b8f
# ╟─f1fba7ce-0fde-11eb-0b31-c50aa56730fc
# ╠═f1d3fb90-0fde-11eb-2fd0-6b4de2c6f079
# ╟─f1bf8930-0fde-11eb-0ad9-e39de1fcb0f9
# ╠═f1ae7230-0fde-11eb-3eb5-c7940bd9af8b
# ╠═f794c600-0fe2-11eb-11e4-15daa9f0b60a
# ╠═ffcea390-0fe2-11eb-1a3b-191c7f621105
# ╟─f19a4df2-0fde-11eb-0bcc-73bbc9df9ec4
# ╟─f184ca20-0fde-11eb-3438-e1e2cf1ea97a
# ╟─9eabc730-0fe4-11eb-32e7-35867c6fd643
# ╟─270fa930-0fe4-11eb-2446-5102fab49ac4
# ╟─9dad6a00-0fe4-11eb-3465-b1fbcdefa2c8
# ╟─f16e5bf0-0fde-11eb-0843-eb66ae5e4ab3
# ╟─4b308310-0fe5-11eb-2d54-a3c7b7f673b7
# ╟─f1529690-0fde-11eb-0a49-b76a8afd8d29
# ╟─37dbc810-0fe5-11eb-29f6-cbdb796e3ff7
# ╠═43ef0f40-0fe5-11eb-04c6-6f464fea37ec
# ╠═f13b16f0-0fde-11eb-10dd-89a346d0ebfa
# ╟─f13327b0-0fde-11eb-3be5-8d3161ee2526
# ╟─88746930-0fe5-11eb-37ba-fde0567d3584
# ╟─88521420-0fe5-11eb-0b63-1f00a7558ebf
# ╟─f0e46b70-0fde-11eb-101a-a35aff79f234
# ╟─f0bff37e-0fde-11eb-31df-8d0b8f5e0234
# ╟─f0aa96c0-0fde-11eb-2c6b-0f0a05260f8d
# ╟─f090cd32-0fde-11eb-27ee-11b56e69b4b0
# ╟─f07a8610-0fde-11eb-3047-4de6b9727e21
# ╠═f7a62e50-0fe6-11eb-0ccc-e55edd0613b3
# ╠═f05af020-0fde-11eb-12a3-915d7357a483
# ╠═f05ac910-0fde-11eb-1df2-a104c15a70bd
# ╠═f0297fe0-0fde-11eb-33ee-2b7820d58ab3
# ╠═3d3752ee-0fe7-11eb-2a47-f5e6e1c3a6b7
# ╠═3d2307a0-0fe7-11eb-0cec-f93b5d63d8f0
# ╠═3d0c7260-0fe7-11eb-30ed-e95e8d2f1b3b
# ╠═3cf9fbd0-0fe7-11eb-0135-19b0d155013c
# ╠═484a24a0-0fe8-11eb-2c66-a5a1f436af7e
# ╟─59bcb220-0fe8-11eb-3f6b-c19546af91b8
# ╟─3ce36690-0fe7-11eb-226f-030d85b25e99
# ╠═3cd2769e-0fe7-11eb-0cba-0144726b8b1e
# ╠═3cbbba50-0fe7-11eb-163c-afcb64398fe2
# ╠═3ca76f00-0fe7-11eb-0b72-37ebb4860d54
# ╠═3c94351e-0fe7-11eb-3170-3ff3c844cd4f
# ╠═3c7d9fde-0fe7-11eb-0746-9b56023f22b4
# ╠═1f08c5b0-0fe8-11eb-0741-b3d568e15342
# ╠═1ef5b2e0-0fe8-11eb-1f12-09dbbfec87e2
# ╠═1ee0a440-0fe8-11eb-12f4-8164440fa6b7
# ╠═1ec88860-0fe8-11eb-13de-530273037934
# ╠═1ea548f0-0fe8-11eb-1512-d14aaf5b6e43
# ╠═1e920f10-0fe8-11eb-0a99-9be2826c2e20
# ╠═1e7fbf90-0fe8-11eb-2510-1fcb2efc537f
# ╠═1e69c690-0fe8-11eb-1c05-713de2e85f8f
# ╠═1e54b7f0-0fe8-11eb-17d7-7d838b63f38c
# ╠═1e4352ce-0fe8-11eb-2198-addfa7f7cf92
# ╠═1e29d760-0fe8-11eb-1dab-8ff26e1cb786
