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
