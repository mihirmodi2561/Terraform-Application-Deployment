resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.example.key_name
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.subnet_a.id
  user_data              = filebase64("user-data.sh")

  connection {
    type        = "ssh"
    user        = "ubuntu"                                                                     # Replace with the appropriate username for your EC2 instance
    private_key = file("/Users/mihirmodi/Desktop/School/Devops/aws /aws_pub_key/key-for-demo") # Replace with the path to your private key
    host        = self.public_ip
  }

  # File provisioner to copy a file from local to the remote EC2 instance
  provisioner "file" {
    source      = "/Users/mihirmodi/Desktop/School/Devops/terraform/Terraform-Application-Deployment/Flask Application" # Replace with the path to your local file
    destination = "/home/ubuntu/app.py"                                                                                 # Replace with the path on the remote instance
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Hello from the remote instance'",
  #     "sudo apt update -y",                  # Update package lists (for ubuntu)
  #     "sudo apt-get install -y python3-pip", # Example package installation
  #     "cd /home/ubuntu",
  #     "sudo pip3 install flask",
  #     "sudo python3 app.py",
  #   ]
  # }
}
