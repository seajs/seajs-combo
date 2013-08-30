
build:
	@seatools build

test:
	@seatools site
	@seatools test --local
	@seatools test --http

totoro:
	@seatools test --totoro

size:
	@seatools size
