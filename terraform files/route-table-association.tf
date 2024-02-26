resource "aws_route_table_association" "name" {
  subnet_id      = aws_subnet.subnet_a.id
  route_table_id = aws_route_table.RT.id
}