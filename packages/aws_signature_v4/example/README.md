Example using the signer to create an S3 bucket and upload a file to it.

### Web Notes

Due to CORS restrictions in S3, creating a bucket is not currently possible in the browser. The web example assumes you already have a bucket and have enabled CORS settings on it which allow `PUT` requests from the origin you're uploading from. See the S3 [CORS documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html) for more info.
