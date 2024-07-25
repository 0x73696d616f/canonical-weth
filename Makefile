# Define a helper function to read .env variables
ifneq (,$(wildcard ./.env))
    include .env
    export $(shell sed 's/=.*//' .env)
endif

# Define the target
deploy:
	@forge create contracts/WETH9.sol:WETH9 --rpc-url $(RPC_URL) --private-key $(PRIVATE_KEY) --legacy