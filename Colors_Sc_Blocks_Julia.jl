
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.add(["Images", "ImageIO", "ImageMagick"])
	using Images

	Url_Variable = "https://emahesha.files.wordpress.com/2008/08/9indian_flag.jpg"
