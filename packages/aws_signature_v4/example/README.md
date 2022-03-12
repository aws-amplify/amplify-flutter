Example using the signer to describe a Cognito User Pool.

> Make sure you have AWS credentials in your environment (`AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`) or use the `--access-key-id` and `--secret-access-key` flags to specify them manually.

```bash
$ export AWS_ACCESS_KEY_ID=...
$ export AWS_SECRET_ACCESS_KEY=...
$ dart run http_example.dart \
    --user-pool-id=us-west-2_1abc2dEfg \
    --region=us-west-2 # | jq (Optionally, you can pipe it to jq)
```
