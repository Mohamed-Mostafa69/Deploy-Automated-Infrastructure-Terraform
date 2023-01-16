#aws ec2 create-key-pair --key-name MyKeyPairaya --query 'KeyMaterial' --output text > ~/.ssh/MyKeyPairaya.pem
#chmod 400 ~/.ssh/MyKeyPairaya.pem