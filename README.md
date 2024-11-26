# bq-plotly

This is a minimal container image needed to run [plotly](https://plotly.com/python/) with all python dependencies.

This includes [kaleido](https://github.com/plotly/Kaleido) which is used for rendering of images (PNG, etc).

The image has no ENTRYPOINT or CMD. Users are expected to either use this image as a base
or inject necessary python source at runtime.

