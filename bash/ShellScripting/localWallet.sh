


POD_LOCAL_WALLET="pod 'OVWalletSDK', :path => '$WALLET'"
sed -n '/OVWalletSDK/=' Podfile | xargs -I '{}' sed '{}s/.*/$POD_LOCAL_WALLET/' Podfile > Podfile.out
