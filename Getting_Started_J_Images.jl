### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ f100ffde-2863-11eb-3532-1f0d9dd21ff1
begin
	import Pkg
	Pkg.add("Images")
	using Images
end

# ╔═╡ f0adfde0-2863-11eb-0c9c-299a0c9c8d30
begin
	Pkg.add(["FileIO","ImageMagick","ImageIO"])
	using FileIO,ImageMagick,ImageIO
end

# ╔═╡ f078e420-2863-11eb-388d-c353185fe9a5

begin
	Pkg.add(["TestImages"])
	using TestImages
end

# ╔═╡ 96de8290-2ac9-11eb-26c9-7b604f9321b4
begin
	ENV["PYTHON"]=""
	Pkg.add("PyPlot")
	using PyPlot
end

# ╔═╡ dba26b1e-2863-11eb-029f-29cc35edd5b5
md"""https://juliaimages.org/stable/install/

go over below too

https://augmentorjl.readthedocs.io/en/latest/introduction/images.html
"""

# ╔═╡ f133a8a0-2863-11eb-069c-e18b17dad15c
md"""## Installation"""

# ╔═╡ f0e49e40-2863-11eb-3907-a5a06d4c345f
md"""
## Loading your first image
If this is your first time working with images in julia, it's likely that you'll need to install some image IO backends to load the images. The current available backends for image files are:

-ImageMagick.jl covers most image formats and has extra functionality. This can be your first choice if you don't have a preference.
-QuartzImageIO.jl exposes macOS's native image IO functionality to Julia. In some cases it's faster than ImageMagick, but it might not cover all your needs.
-ImageIO.jl is a new image IO backend (requires julia >=v"1.3") that provides an optimized performance for PNG files. Check benchmark here
-OMETIFF.jl supports OME-TIFF files. If you don't know what it is, then it is likely that you don't need this package."""

# ╔═╡ f0c70420-2863-11eb-048e-3be8b3e0ce36
md"""
## ________________________________________________________________________________
Lets add 3 packages, two from above Imagemagic and IMageIO  and FILEIO for loading and saving an image"""

# ╔═╡ f0940d40-2863-11eb-01f2-d56817b1701e
Gorilla1 = load("D:\\MyGit\\Colors\\Images\\gorilla.PNG")

# ╔═╡ 56efc290-286a-11eb-2e43-bb5b9b390701
md"""below package can be used to have sample images - use name such as - mandrill, blobs, mri-stack, lighthouse"""

# ╔═╡ a8529180-286a-11eb-20c4-7f5f64ed554a
md"""mosaicview - can be used to bring many images together in one frame """

# ╔═╡ f05dbb00-2863-11eb-0cfe-f777be6a1567
begin
	
	img1 = testimage("mandrill") # 512*512 RGB image
	img2 = testimage("blobs") # 254*256 Gray image
	mosaicview(img1, img2; nrow=1)
end 

# ╔═╡ 0947e350-286b-11eb-325a-8d2e67ff66d9
md"""same thing but using column"""

# ╔═╡ f04291e0-2863-11eb-174f-3b05ddd98536
begin
	
	img3 = testimage("mandrill") # 512*512 RGB image
	img4 = testimage("lighthouse") # 254*256 Gray image
	mosaicview(img3, img4; ncolumn=1)
end 

# ╔═╡ f029b2b2-2863-11eb-0e3d-49e44cfdbbe7
begin
	img5 = testimage("mri-stack") # 226×186×27 Gray image
	mosaicview(img5; fillvalue=0.5, npad=2, ncol=7, rowmajor=true)
end

# ╔═╡ f00f9b02-2863-11eb-1d74-afd1a6737dca
typeof(img5)

# ╔═╡ eff33960-2863-11eb-249a-77c16b73fdc3
md"""Elements of image are called pixels; in JuliaImages we provide an abstraction on this concept. For example, we have Gray for grayscale image, RGB for RGB image, Lab for Lab image, and etc.

-Creating a pixel is initializing a struct of that type:"""

# ╔═╡ efd96fd0-2863-11eb-251c-37939a648cd5
GB = Gray(0.0) # black

# ╔═╡ efbf3110-2863-11eb-1c5f-356164fbfef9
GW = Gray(1.0) # white

# ╔═╡ efa678f0-2863-11eb-1173-67f66e15c5c9
RR = RGB(1.0, 0.0, 0.0) # red

# ╔═╡ ef8c6140-2863-11eb-020c-8b55259803e7
RG = RGB(0.0, 1.0, 0.0) # green

# ╔═╡ ef7333f0-2863-11eb-16bc-25d6fc50c384
RB = RGB(0.0, 0.0, 1.0) # blue

# ╔═╡ ef482c50-2863-11eb-1526-99ce6c5a360f
md"""## Color conversions are construction/view"""

# ╔═╡ 8039a8d0-2871-11eb-37cd-1d48db835856
change the Gorilla image - img1 into grayscale

# ╔═╡ 60e49260-2871-11eb-2bd5-870f0080d3cf
GrayGori = Gray.(img1)

# ╔═╡ 60c9de70-2871-11eb-14ef-2144139c568b
YAY = RGB24.(img1)

# ╔═╡ 718a8ba0-2872-11eb-029d-115fb5593f4f
typeof(img1)

# ╔═╡ c6cf0060-2ac9-11eb-0603-dd171d023a6e
md"""## Matplotlib plotting from Python
This module provides a Julia interface to the Matplotlib plotting library from Python, and specifically to the matplotlib.pyplot module.

PyPlot uses the Julia PyCall package to call Matplotlib directly from Julia with little or no overhead (arrays are passed without making a copy)."""

# ╔═╡ 96c1f9e0-2ac9-11eb-2f3c-113d0494607c
Pkg.add("PyPlot")

# ╔═╡ 967b7b02-2ac9-11eb-0ba2-3796f545c9e1


# ╔═╡ 5a370382-2ac9-11eb-283a-619dc0e644be
function plotHist(hst, show=false)

    PyPlot.plot(hst)
    PyPlot.xlabel("Intensities")
    PyPlot.xlim([0, 256])
    PyPlot.yticks([])
    if (show)
        PyPlot.show()
    end
    PyPlot.savefig("img1")
end

# ╔═╡ c953f430-2871-11eb-2b2a-b38914ba0441
md"""the above was a success , maybe it works on PNG image with ease, let me retry this on my own PNG image"""

# ╔═╡ 60942870-2871-11eb-3afe-bb30d05c71ba
img_PNG = "D:\\MyGit\\Colors\\Images\\4by4png.PNG"

# ╔═╡ 60797482-2871-11eb-1788-2d086011ea08
imgPNG = load(img_PNG)

# ╔═╡ 605e7270-2871-11eb-2eb6-1f29fbb7673a
typeof(imgPNG)

# ╔═╡ da23bc90-2872-11eb-2ec7-7be9de168f09
channelview(imgPNG)

# ╔═╡ d8e44550-29ff-11eb-2694-4d399d9fed8e
size(imgPNG)

# ╔═╡ 605300c0-2871-11eb-2777-89cfcfd09ae6
YAY1 = RGB24.(imgPNG)

# ╔═╡ 4dffa8ce-2874-11eb-316d-27352df40430
 YAY3 = parse.(UInt32, hex.(imgPNG, :RRGGBBAA), base=16)

# ╔═╡ f4e07740-2ac4-11eb-1027-513fa1cbb82a
 YAY3_A = parse.(UInt32, hex.(imgPNG, :RRGGBB), base=16)

# ╔═╡ 719372e0-29ff-11eb-3bdb-1b055026907d
YAY4 = reshape(YAY3, (1,16))

# ╔═╡ 717f75b0-29ff-11eb-35ae-538dfc5fa50f
run(`echo hello!`)

# ╔═╡ 716536f0-29ff-11eb-1134-2907e44207b4


# ╔═╡ 4de73ed0-2874-11eb-19db-2b929f47e1ff


# ╔═╡ 08ea43e0-2874-11eb-0c58-4fd45c736a58
YAY2 = c24.(imgPNG)

# ╔═╡ 602b0660-2871-11eb-1ffe-f3d473c96054
typeof(YAY1)

# ╔═╡ 60131190-2871-11eb-33e0-3d031413bc87
channelview(YAY1)

# ╔═╡ 5ff77342-2871-11eb-3efd-4725fe2aa77b


# ╔═╡ 03ebbb30-2874-11eb-1aca-cb82b241fd90


# ╔═╡ 03d3030e-2874-11eb-1765-c505cb92efb1


# ╔═╡ 03b7b2e0-2874-11eb-0bc4-1bccae2c986c


# ╔═╡ 5fe17a40-2871-11eb-117b-950068345b4e
md"""## Understanding Colors Bases System

- Base 10 is our Numbers 0-9. 
- Base 16 is [0 1 2 3 4 5 6 7 8 9 a b c d e f ] (A-F equals 10-15)


"""

# ╔═╡ 6644ed30-29fd-11eb-39d9-eb3d3f96751f
md"""So 255 in Hexa would be explained as in a 15 number system as - 15*16 = 240 and 15*1 = 15 and 240+15 = 255, and fifteen is F, so 255 is FF """

# ╔═╡ 662641a0-29fd-11eb-15bb-19fe09bccd88
md"""So white is 255,255,255 so in hex it would be #FFFFFF"""

# ╔═╡ 660d6270-29fd-11eb-1867-e3ef33c0b59c
md"""in hex if we have pairs like #999999 or #FFFFFF, then we can just use one per pair as #999 or #FFF"""

# ╔═╡ 512e7da0-2a00-11eb-26f6-b373f0612fa9
md"""## Understanding the last AA in  #rrggbbaa color notation
The value of alpha in the new hex notation would range from 00 to FF where 00 is the minimum value i.e 0% and FF is the max value which would be 100% opacity.

If you're aware of hexadecimal calculations, you'll easily be able to calculate the value of alpha based on the percentage of opacity that you need.

Calculating the hex code for 50% Alpha

Since the decimal values for opacity range from 0 to 255, in a traditional rgb notation; the value for 50% opacity would be 127, and hexadecimal value for this would be 7F

Here are some hex values that I get to see on a daily basis:

0% - 00

10% - 1A,

25% - 40,

50% - 7F,

75% - BF,

100% - FF"""

# ╔═╡ 65f23950-29fd-11eb-2dbc-ddef7cb4e594
md"""Explains changing bases, base 2 to 10, 16 etc

https://en.wikibooks.org/wiki/Introducing_Julia/Strings_and_characters"""

# ╔═╡ 5fc69f40-2871-11eb-03cb-e9aee3fcadee
red1 = RGB(1, 0, 0)

# ╔═╡ 5fae5c50-2871-11eb-0636-95066c1ad99b
typeof(red1)

# ╔═╡ 5f95f250-2871-11eb-2a23-0d38013f9ff2
channelview(red1), [2,3,1]

# ╔═╡ 5f7b1750-2871-11eb-34f5-091996aaffd1


# ╔═╡ Cell order:
# ╟─dba26b1e-2863-11eb-029f-29cc35edd5b5
# ╟─f133a8a0-2863-11eb-069c-e18b17dad15c
# ╠═f100ffde-2863-11eb-3532-1f0d9dd21ff1
# ╟─f0e49e40-2863-11eb-3907-a5a06d4c345f
# ╟─f0c70420-2863-11eb-048e-3be8b3e0ce36
# ╠═f0adfde0-2863-11eb-0c9c-299a0c9c8d30
# ╠═f0940d40-2863-11eb-01f2-d56817b1701e
# ╟─56efc290-286a-11eb-2e43-bb5b9b390701
# ╠═f078e420-2863-11eb-388d-c353185fe9a5
# ╠═a8529180-286a-11eb-20c4-7f5f64ed554a
# ╠═f05dbb00-2863-11eb-0cfe-f777be6a1567
# ╟─0947e350-286b-11eb-325a-8d2e67ff66d9
# ╠═f04291e0-2863-11eb-174f-3b05ddd98536
# ╠═f029b2b2-2863-11eb-0e3d-49e44cfdbbe7
# ╠═f00f9b02-2863-11eb-1d74-afd1a6737dca
# ╟─eff33960-2863-11eb-249a-77c16b73fdc3
# ╠═efd96fd0-2863-11eb-251c-37939a648cd5
# ╠═efbf3110-2863-11eb-1c5f-356164fbfef9
# ╠═efa678f0-2863-11eb-1173-67f66e15c5c9
# ╠═ef8c6140-2863-11eb-020c-8b55259803e7
# ╠═ef7333f0-2863-11eb-16bc-25d6fc50c384
# ╟─ef482c50-2863-11eb-1526-99ce6c5a360f
# ╠═8039a8d0-2871-11eb-37cd-1d48db835856
# ╠═60e49260-2871-11eb-2bd5-870f0080d3cf
# ╠═60c9de70-2871-11eb-14ef-2144139c568b
# ╠═718a8ba0-2872-11eb-029d-115fb5593f4f
# ╠═c6cf0060-2ac9-11eb-0603-dd171d023a6e
# ╠═96de8290-2ac9-11eb-26c9-7b604f9321b4
# ╠═96c1f9e0-2ac9-11eb-2f3c-113d0494607c
# ╠═967b7b02-2ac9-11eb-0ba2-3796f545c9e1
# ╠═5a370382-2ac9-11eb-283a-619dc0e644be
# ╟─c953f430-2871-11eb-2b2a-b38914ba0441
# ╠═60942870-2871-11eb-3afe-bb30d05c71ba
# ╠═60797482-2871-11eb-1788-2d086011ea08
# ╠═605e7270-2871-11eb-2eb6-1f29fbb7673a
# ╠═da23bc90-2872-11eb-2ec7-7be9de168f09
# ╠═d8e44550-29ff-11eb-2694-4d399d9fed8e
# ╠═605300c0-2871-11eb-2777-89cfcfd09ae6
# ╠═4dffa8ce-2874-11eb-316d-27352df40430
# ╠═f4e07740-2ac4-11eb-1027-513fa1cbb82a
# ╠═719372e0-29ff-11eb-3bdb-1b055026907d
# ╠═717f75b0-29ff-11eb-35ae-538dfc5fa50f
# ╠═716536f0-29ff-11eb-1134-2907e44207b4
# ╠═4de73ed0-2874-11eb-19db-2b929f47e1ff
# ╠═08ea43e0-2874-11eb-0c58-4fd45c736a58
# ╠═602b0660-2871-11eb-1ffe-f3d473c96054
# ╠═60131190-2871-11eb-33e0-3d031413bc87
# ╠═5ff77342-2871-11eb-3efd-4725fe2aa77b
# ╠═03ebbb30-2874-11eb-1aca-cb82b241fd90
# ╠═03d3030e-2874-11eb-1765-c505cb92efb1
# ╠═03b7b2e0-2874-11eb-0bc4-1bccae2c986c
# ╟─5fe17a40-2871-11eb-117b-950068345b4e
# ╟─6644ed30-29fd-11eb-39d9-eb3d3f96751f
# ╟─662641a0-29fd-11eb-15bb-19fe09bccd88
# ╟─660d6270-29fd-11eb-1867-e3ef33c0b59c
# ╟─512e7da0-2a00-11eb-26f6-b373f0612fa9
# ╟─65f23950-29fd-11eb-2dbc-ddef7cb4e594
# ╠═5fc69f40-2871-11eb-03cb-e9aee3fcadee
# ╠═5fae5c50-2871-11eb-0636-95066c1ad99b
# ╠═5f95f250-2871-11eb-2a23-0d38013f9ff2
# ╠═5f7b1750-2871-11eb-34f5-091996aaffd1
