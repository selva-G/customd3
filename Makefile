LIBRARY_FILES = \
	node_modules/d3/src/start.js \
  node_modules/d3/src/compat/index.js \
  node_modules/d3/src/arrays/index.js \
  node_modules/d3/src/behavior/index.js \
  node_modules/d3/src/color/index.js \
  node_modules/d3/src/core/index.js \
  node_modules/d3/src/event/index.js \
  node_modules/d3/src/format/index.js \
  node_modules/d3/src/geom/voronoi.js \
  node_modules/d3/src/interpolate/index.js \
  node_modules/d3/src/layout/index.js \
  node_modules/d3/src/math/index.js \
  node_modules/d3/src/scale/index.js \
  node_modules/d3/src/selection/index.js \
  node_modules/d3/src/svg/index.js \
  node_modules/d3/src/time/index.js \
  node_modules/d3/src/transition/index.js \
  node_modules/d3/src/end.js

d3.js: $(LIBRARY_FILES)
	node_modules/.bin/smash $(LIBRARY_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@
