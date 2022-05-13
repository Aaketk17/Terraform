resource "aws_s3_bucket" "terraBucket" {
    bucket = "terra-bucket-athavan-2022"
    tags = {
      Name = "Bucket1"
      Environment = "Test"
   }
}