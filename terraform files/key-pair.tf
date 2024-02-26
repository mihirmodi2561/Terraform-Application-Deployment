resource "aws_key_pair" "example" {
  key_name   = var.key_name
  public_key = file("/Users/mihirmodi/Desktop/School/Devops/aws /aws_pub_key/key-for-demo.pub") # Replace the path for your public key file
}
