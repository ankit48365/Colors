### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 676fcc70-fe6a-11ea-228a-8f3af1750c03


# ╔═╡ ec7bfd20-fe57-11ea-11ff-ad7d1063c690
md"""
## Load these Packages First - Needed for Images Manipulation
Let's use the Images.jl package to load an image and see what we get

"""

# ╔═╡ 3e2b6a10-02b9-11eb-2026-5b14f80e3d02
	md"""
	Code Syntax  -->  import Pkg --> 	Pkg.activate(mktempdir())
	"""

# ╔═╡ ec64cba0-fe57-11ea-0a43-296a76f4e41f
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ ec4ef9b0-fe57-11ea-3218-19d3eb36b629
begin
	Pkg.add(["Images", "ImageIO", "ImageMagick"])
	using Images
end

# ╔═╡ 64efe220-02b9-11eb-33a9-05fc5c343994
	md"""
	Code Syntax –> 	Pkg.add(["Images", "ImageIO", "ImageMagick"]) --> using Images
	"""

# ╔═╡ e72eb300-fe69-11ea-0295-235feccceff5
	md"""
	## Open image, from URL
	"""

# ╔═╡ ec39eb10-fe57-11ea-1a17-f5177a3a2bc4
# defines a variable called `url_variable`
# whose value is a string (written inside `"`):

Url_Variable = "https://emahesha.files.wordpress.com/2008/08/9indian_flag.jpg"  

# ╔═╡ ec2578b0-fe57-11ea-21f9-3d06f046e6c7
Indi_Flag_file = download(Url_Variable, "Indi_Flag.jpg")  # download to a local file

# ╔═╡ ec0dd1fe-fe57-11ea-2bff-8f9c00037c98
Tricolor = load(Indi_Flag_file)

# ╔═╡ df83edf0-02ba-11eb-3f62-b9af925b068d
	md"""
	Now can call it using the variable only like "Trocolor"
	"""

# ╔═╡ ebe03252-fe57-11ea-3150-d3945169079b
Tricolor

# ╔═╡ eb561abe-fe57-11ea-083b-7926bd86e4e9
	md"""
	How to see the Structure of a Image !!
	"""

# ╔═╡ 51309bb0-fe6a-11ea-04ca-e3b11cbf31f1
typeof(Tricolor)

# ╔═╡ 25be91a0-02be-11eb-0e62-65deaa359b84
	md"""
	The Above is Explained as follow:
- It's an `Array`

- The `2` means that it has **2 dimensions** (a **matrix**)

- `RGBX{Normed{UInt8,8}}` is the type of object stored in the array

- A Julia object representing a colour

- RGB = Red, Green, Blue
	"""

# ╔═╡ 51180aa0-fe6a-11ea-38ed-e157030c325c
	md"""
	To See the Size of an Image
	"""

# ╔═╡ d62a5da0-02bc-11eb-37f2-6d919583d571
size(Tricolor)

# ╔═╡ d60d86d0-02bc-11eb-2056-8b51aea35279
	md"""
	To see a portion of an Image - Provide the range (1st Range is Top to Bottom, 2nd 		Range is Left to right)
	"""

# ╔═╡ d5f3bd3e-02bc-11eb-05d7-d32bb9a027fc
Tricolor[30:120, 65:110]

# ╔═╡ d5d9cca0-02bc-11eb-048f-9320b39c74cd
md" Getting pieces of an image"

# ╔═╡ d5bd9212-02bc-11eb-222e-9bed9f96ac54
begin 
	(h, w) = size(Tricolor)
	Slice = Tricolor[(h ÷ 4):h, (w ÷ 10): (9w ÷ 9)]
	# `÷` is typed as \div <TAB>  -- integer division
end

# ╔═╡ d5a268f0-02bc-11eb-115b-13534cc0c95e
	md"""
Size of the Peice we just created above:
	"""

# ╔═╡ d58284e0-02bc-11eb-2b6b-9fc3b786a3c9
size(Slice)

# ╔═╡ 0b2d32e0-02c0-11eb-00d7-171f805c6e2d
md"## Manipulating matrices to Manipulate Images
An image is just a matrix, so we can manipulate *matrices* to manipulate the *image*
"

# ╔═╡ 0b139060-02c0-11eb-0a67-6920aee627ca
	md"""
	Lets Play with the Variable 'Slice' we created
	"""

# ╔═╡ 0af4bdc0-02c0-11eb-30aa-21865c74c6f3
[Slice Slice]

# ╔═╡ 0ad96d8e-02c0-11eb-1546-3534868d4894
	md"""	The Above keeps the image next to it - the below will put four of them creating an Kaliedoscope	"""

# ╔═╡ 0abf7cf0-02c0-11eb-0003-fb78d7a76dc0
[
 Slice                   reverse(Slice, dims=2)
 reverse(Slice, dims=1)  reverse(reverse(Slice, dims=1), dims=2)
]

# ╔═╡ 0aa58c50-02c0-11eb-1608-d1ec9abe94c6


# ╔═╡ 0a8a3c20-02c0-11eb-15e2-6d41dab0deee


# ╔═╡ 0a6ca200-02c0-11eb-0619-c1f7c9c51fb3


# ╔═╡ 0a519ff0-02c0-11eb-31e9-433a6762996c


# ╔═╡ 0a3676d0-02c0-11eb-0510-e7536424f8b7


# ╔═╡ 0a192ace-02c0-11eb-1e3f-b5ff3970f610


# ╔═╡ 09feec10-02c0-11eb-2e6e-0b683abcdd35


# ╔═╡ 09e65b00-02c0-11eb-33d7-99193d98136e


# ╔═╡ 09c9ab40-02c0-11eb-2e14-294da8b643b4


# ╔═╡ 09ad70b0-02c0-11eb-1982-7f86a152b7b5


# ╔═╡ 09922080-02c0-11eb-2d95-83e9fbe98d7a


# ╔═╡ 09798f6e-02c0-11eb-09e0-3feb2b5a9048


# ╔═╡ 095bce40-02c0-11eb-309a-7b4fda24cd8c


# ╔═╡ 0940cc30-02c0-11eb-252c-37c67ae8008e


# ╔═╡ d527bab0-02bc-11eb-3ef2-61490bf35dab
	md"""
	Below, change values and will give you range of colors
	"""

# ╔═╡ 50fd2fa0-fe6a-11ea-22ea-93ec0773ebd3
RGBX(0.9, 0.9, 0.9)

# ╔═╡ 50e00ab0-fe6a-11ea-169e-89ce2d5d5e8b
	md"""
	Filler
	"""

# ╔═╡ 50c508a0-fe6a-11ea-0686-8391123b8455


# ╔═╡ 50a54ba0-fe6a-11ea-25e9-b148070c37f5
	md"""
	Filler
	"""

# ╔═╡ 505bbf82-fe6a-11ea-183e-65470af0bffe


# ╔═╡ Cell order:
# ╠═676fcc70-fe6a-11ea-228a-8f3af1750c03
# ╟─ec7bfd20-fe57-11ea-11ff-ad7d1063c690
# ╟─3e2b6a10-02b9-11eb-2026-5b14f80e3d02
# ╟─ec64cba0-fe57-11ea-0a43-296a76f4e41f
# ╠═64efe220-02b9-11eb-33a9-05fc5c343994
# ╟─ec4ef9b0-fe57-11ea-3218-19d3eb36b629
# ╟─e72eb300-fe69-11ea-0295-235feccceff5
# ╠═ec39eb10-fe57-11ea-1a17-f5177a3a2bc4
# ╠═ec2578b0-fe57-11ea-21f9-3d06f046e6c7
# ╠═ec0dd1fe-fe57-11ea-2bff-8f9c00037c98
# ╠═df83edf0-02ba-11eb-3f62-b9af925b068d
# ╠═ebe03252-fe57-11ea-3150-d3945169079b
# ╟─eb561abe-fe57-11ea-083b-7926bd86e4e9
# ╠═51309bb0-fe6a-11ea-04ca-e3b11cbf31f1
# ╟─25be91a0-02be-11eb-0e62-65deaa359b84
# ╟─51180aa0-fe6a-11ea-38ed-e157030c325c
# ╠═d62a5da0-02bc-11eb-37f2-6d919583d571
# ╟─d60d86d0-02bc-11eb-2056-8b51aea35279
# ╠═d5f3bd3e-02bc-11eb-05d7-d32bb9a027fc
# ╟─d5d9cca0-02bc-11eb-048f-9320b39c74cd
# ╟─d5bd9212-02bc-11eb-222e-9bed9f96ac54
# ╟─d5a268f0-02bc-11eb-115b-13534cc0c95e
# ╟─d58284e0-02bc-11eb-2b6b-9fc3b786a3c9
# ╟─0b2d32e0-02c0-11eb-00d7-171f805c6e2d
# ╟─0b139060-02c0-11eb-0a67-6920aee627ca
# ╟─0af4bdc0-02c0-11eb-30aa-21865c74c6f3
# ╟─0ad96d8e-02c0-11eb-1546-3534868d4894
# ╟─0abf7cf0-02c0-11eb-0003-fb78d7a76dc0
# ╠═0aa58c50-02c0-11eb-1608-d1ec9abe94c6
# ╠═0a8a3c20-02c0-11eb-15e2-6d41dab0deee
# ╠═0a6ca200-02c0-11eb-0619-c1f7c9c51fb3
# ╠═0a519ff0-02c0-11eb-31e9-433a6762996c
# ╠═0a3676d0-02c0-11eb-0510-e7536424f8b7
# ╠═0a192ace-02c0-11eb-1e3f-b5ff3970f610
# ╠═09feec10-02c0-11eb-2e6e-0b683abcdd35
# ╠═09e65b00-02c0-11eb-33d7-99193d98136e
# ╠═09c9ab40-02c0-11eb-2e14-294da8b643b4
# ╠═09ad70b0-02c0-11eb-1982-7f86a152b7b5
# ╠═09922080-02c0-11eb-2d95-83e9fbe98d7a
# ╠═09798f6e-02c0-11eb-09e0-3feb2b5a9048
# ╠═095bce40-02c0-11eb-309a-7b4fda24cd8c
# ╠═0940cc30-02c0-11eb-252c-37c67ae8008e
# ╟─d527bab0-02bc-11eb-3ef2-61490bf35dab
# ╠═50fd2fa0-fe6a-11ea-22ea-93ec0773ebd3
# ╠═50e00ab0-fe6a-11ea-169e-89ce2d5d5e8b
# ╠═50c508a0-fe6a-11ea-0686-8391123b8455
# ╟─50a54ba0-fe6a-11ea-25e9-b148070c37f5
# ╠═505bbf82-fe6a-11ea-183e-65470af0bffe
