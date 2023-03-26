# Set Up

1. create and fill out the following .env files:
   `relayer.goerli.env relayer.mantle.env validator.goerli.env validator.mantle.env`

\*note you will need AWS keys and secrets (dm twopats)

More details in the following docus:
https://docs.hyperlane.xyz/docs/operators/validators/environment-variables
https://docs.hyperlane.xyz/docs/operators/relayers/environment-variables

2. edit the absolute_path variable in `relayer.zsh` and `validator.zsh`. This value should be your machine's absolute path to this directory. Conveniently, you can run `pwd`.

# Scripts

/scripts/validator.zsh
/scripts/relayer.zsh

\*note: both scripts require the -C or --chain flag, here is an example:
`zsh scripts/relayer.zsh --chain mantle`

# Supported Chains

-- Goerli
-- Mantle

# example env

Relayers

```
HYP_BASE_METRICS=9090
HYP_BASE_TRACING_LEVEL=info
HYP_BASE_TRACING_FMT=pretty
HYP_BASE_CHAINS_GOERLI_CONNECTION_URL=https://rpc.ankr.com/eth_goerli
HYP_BASE_CHAINS_MANTLE_CONNECTION_URL=https://rpc.testnet.mantle.xyz/
HYP_RELAYER_ORIGINCHAINNAME=goerli
HYP_RELAYER_DESTINATIONCHAINNAMES=mantle
HYP_RELAYER_GASPAYMENTENFORCEMENT=[{"type": "none"}]
HYP_RELAYER_ALLOWLOCALCHECKPOINTSYNCERS=false

HYP_BASE_CHAINS_GOERLI_SIGNER_TYPE=aws
HYP_BASE_CHAINS_GOERLI_SIGNER_ID=alias/hyperlane-relayer-signer-goerli
HYP_BASE_CHAINS_GOERLI_SIGNER_REGION=us-east-1
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
```

Validators

```
HYP_VALIDATOR_ORIGINCHAINNAME=goerli
HYP_VALIDATOR_REORGPERIOD=20
HYP_VALIDATOR_INTERVAL=15
HYP_BASE_CHAINS_GOERLI_CONNECTION_URL=https://rpc.ankr.com/eth_goerli
HYP_BASE_METRICS=9090
HYP_BASE_TRACING_LEVEL=info
HYP_BASE_TRACING_FMT=pretty

HYP_VALIDATOR_VALIDATOR_TYPE=aws
HYP_VALIDATOR_VALIDATOR_ID=
HYP_VALIDATOR_VALIDATOR_REGION=us-east-1
HYP_VALIDATOR_CHECKPOINTSYNCER_TYPE=s3
HYP_VALIDATOR_CHECKPOINTSYNCER_BUCKET=hyperlane-validator-signatures-test-test
HYP_VALIDATOR_CHECKPOINTSYNCER_REGION=us-east-1
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
```
