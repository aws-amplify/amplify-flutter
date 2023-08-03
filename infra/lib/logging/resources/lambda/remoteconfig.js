const { S3Client, GetObjectCommand } = require("@aws-sdk/client-s3")
const s3 = new S3Client({})
const bucketName = process.env.BUCKET
const key = process.env.KEY
let cachedConfig = {
    expiresOn: 0, 
    ETag: '', 
    config: ''
}

exports.main = async function(event, context) {
  try {
    if (event.httpMethod === "GET") {
      if (!cachedConfig.config || Date.now() > cachedConfig.expiresOn) {
        // refresh cache if cache is invalid
        const command = new GetObjectCommand({ Bucket: bucketName, Key: key })
        const s3Resp = await s3.send(command)
        await setCachedConfig(s3Resp)
      }

      if (event.headers['If-None-Match'] === cachedConfig.ETag) {
        // return 304 not modified if config has not changed
        return {
          statusCode: 304,
        }
      } else {
        // return updated/modified config with latest ETag
        return {
          statusCode: 200,
          headers: {"'If-None-Match'": cachedConfig.ETag },
          body: cachedConfig.config
        }
      }
    }
  } catch(error) {
    const resp = error.stack || JSON.stringify(error, null, 2)
    return {
      statusCode: 400,
        headers: {},
        body: JSON.stringify(resp)
    }
  }
}

const setCachedConfig = async (s3Resp) => {
  cachedConfig = {
    expiresOn: Date.now() + 600 * 1000, //10 minutes
    ETag: s3Resp.ETag.replace(/\"/gi, ''), //remove \" from string
    config: await s3Resp.Body.transformToString()
  }
}