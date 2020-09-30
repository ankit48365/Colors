### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ 676fcc70-fe6a-11ea-228a-8f3af1750c03


# ╔═╡ ec7bfd20-fe57-11ea-11ff-ad7d1063c690
md"""
## Load these Packages First - Needed for Images Manipulation

- Let's use the Images.jl package to load an image and see what we get

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

# ╔═╡ e72eb300-fe69-11ea-0295-235feccceff5
begin
	image_text = 
	md"""
	## Open image, from URL
	"""
	image_text
end

# ╔═╡ ec39eb10-fe57-11ea-1a17-f5177a3a2bc4
# defines a variable called `url`
# whose value is a string (written inside `"`):

url = "https://emahesha.files.wordpress.com/2008/08/9indian_flag.jpg"  

# ╔═╡ ec2578b0-fe57-11ea-21f9-3d06f046e6c7


# ╔═╡ ec0dd1fe-fe57-11ea-2bff-8f9c00037c98


# ╔═╡ ebe03252-fe57-11ea-3150-d3945169079b


# ╔═╡ eb561abe-fe57-11ea-083b-7926bd86e4e9


# ╔═╡ 51309bb0-fe6a-11ea-04ca-e3b11cbf31f1


# ╔═╡ 51180aa0-fe6a-11ea-38ed-e157030c325c


# ╔═╡ 50fd2fa0-fe6a-11ea-22ea-93ec0773ebd3


# ╔═╡ 50e00ab0-fe6a-11ea-169e-89ce2d5d5e8b


# ╔═╡ 50c508a0-fe6a-11ea-0686-8391123b8455


# ╔═╡ 50a54ba0-fe6a-11ea-25e9-b148070c37f5


# ╔═╡ 505bbf82-fe6a-11ea-183e-65470af0bffe


# ╔═╡ Cell order:
# ╠═676fcc70-fe6a-11ea-228a-8f3af1750c03
# ╠═ec7bfd20-fe57-11ea-11ff-ad7d1063c690
# ╠═ec64cba0-fe57-11ea-0a43-296a76f4e41f
# ╠═ec4ef9b0-fe57-11ea-3218-19d3eb36b629
# ╠═e72eb300-fe69-11ea-0295-235feccceff5
# ╟─ec39eb10-fe57-11ea-1a17-f5177a3a2bc4
# ╠═ec2578b0-fe57-11ea-21f9-3d06f046e6c7
# ╠═ec0dd1fe-fe57-11ea-2bff-8f9c00037c98
# ╠═ebe03252-fe57-11ea-3150-d3945169079b
# ╠═eb561abe-fe57-11ea-083b-7926bd86e4e9
# ╠═51309bb0-fe6a-11ea-04ca-e3b11cbf31f1
# ╠═51180aa0-fe6a-11ea-38ed-e157030c325c
# ╠═50fd2fa0-fe6a-11ea-22ea-93ec0773ebd3
# ╠═50e00ab0-fe6a-11ea-169e-89ce2d5d5e8b
# ╠═50c508a0-fe6a-11ea-0686-8391123b8455
# ╠═50a54ba0-fe6a-11ea-25e9-b148070c37f5
# ╠═505bbf82-fe6a-11ea-183e-65470af0bffe
