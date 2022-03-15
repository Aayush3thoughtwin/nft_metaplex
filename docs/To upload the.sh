To upload the 

ts-node js/packages/cli/src/candy-machine-v2-cli.ts upload \
    -e devnet \
    -k my-keypair.json \
    -cp config.json \
    -c example \
    ./assets



To varify

ts-node js/packages/cli/src/candy-machine-v2-cli.ts verify_upload \
    -e devnet \
    -k my-keypair.json \
    -c example
    
To mint 

ts-node js/packages/cli/src/candy-machine-v2-cli.ts mint_one_token \
    -e devnet \
    -k my-keypair.json \
    -c example

To mint Multiple Tokens

ts-node js/packages/cli/src/candy-machine-v2-cli.ts mint_multiple_tokens \
    -e devnet \
    -k my-keypair.json \
    -c example \
    --number 10


For view the settings

ts-node js/packages/cli/src/candy-machine-v2-cli.ts show \
    -e devnet \
    -k my-keypair.json \
    -c example