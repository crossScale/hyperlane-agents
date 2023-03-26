while [[ "$#" -gt 0 ]]
do case $1 in
    -C|--chain) chain="$2"
    shift;;
    *) echo "Unknown parameter passed: $1"
    exit 1;;
esac
shift
done
echo "Running Validator for $chain"

env_file="validator.$chain.env"
docker run -it --mount type=bind,source=/Users/2pats/Desktop/code/xscale/hyperlane-agents/config/custom.json,target=/config/custom.json,readonly -e CONFIG_FILES=/config/custom.json --env-file $env_file gcr.io/abacus-labs-dev/hyperlane-agent:1cbe5fd-20230309-202035 ./validator
