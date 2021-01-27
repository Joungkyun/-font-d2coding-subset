all: subset woff woff2 eot svg

subset:
	for f in $$( ls fonts/*.{ttf,otf} 2> /dev/null ); \
	do                                                \
		./scripts/make-subset $$( realpath $$f )      \
		    -f $$( realpath ./glyphs.data )           \
		    -s $$( realpath ./subsets );              \
	done

woff2:
	for f in $$( ls subsets/*.{ttf,otf} 2> /dev/null );   \
	do                                                    \
		grep "\.otf" <<< "$$f" && f=$${f//subsets/fonts}; \
		./scripts/make-webify $$( realpath $$f )          \
		    -t woff2                                      \
		    -s $$( realpath ./subsets );                  \
	done

woff:
	for f in $$( ls fonts/*.{ttf,otf} 2> /dev/null ); \
	do                                                \
		./scripts/make-webify $$( realpath $$f )      \
		    -t woff                                   \
		    -f $$( realpath ./glyphs.data )           \
		    -s $$( realpath ./subsets );              \
	done

svg:
	for f in $$( ls subsets/*.{ttf,otf} 2> /dev/null ); \
	do                                                  \
		./scripts/make-webify $$( realpath $$f )        \
		    -t svg                                      \
		    -s $$( realpath ./subsets );                \
	done

eot:
	for f in $$( ls subsets/*.{ttf,otf} 2> /dev/null ); \
	do                                                  \
		./scripts/make-webify $$( realpath $$f )        \
		    -t eot                                      \
		    -s $$( realpath ./subsets );                \
	done
