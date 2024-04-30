// import { createEnv } from '@t3-oss/env-nextjs'
import { z } from 'zod'

// FIXME: error on build `CommonJS module whose import`
// export const env = createEnv({
//   server: {
//     SERVER_PORT: z.coerce.number().default(3000),
//     DATABASE_URL: z.string().url(),

//     JWT_SECRET: z.string(),

//     GITHUB_OAUTH_CLIENT_ID: z.string(),
//     GITHUB_OAUTH_CLIENT_SECRET: z.string(),
//     GITHUB_OAUTH_CLIENT_REDIRECT_URI: z.string().url(),
//   },
//   client: {},
//   shared: {},
//   runtimeEnv: {
//     SERVER_PORT: process.env.SERVER_PORT,
//     DATABASE_URL: process.env.DATABASE_URL,
//     JWT_SECRET: process.env.JWT_SECRET,
//     GITHUB_OAUTH_CLIENT_ID: process.env.GITHUB_OAUTH_CLIENT_ID,
//     GITHUB_OAUTH_CLIENT_SECRET: process.env.GITHUB_OAUTH_CLIENT_SECRET,
//     GITHUB_OAUTH_CLIENT_REDIRECT_URI:
//       process.env.GITHUB_OAUTH_CLIENT_REDIRECT_URI,
//   },
//   emptyStringAsUndefined: true,
// })

export const env = z
  .object({
    SERVER_PORT: z.number().default(3000),
    DATABASE_URL: z.string().url(),
    JWT_SECRET: z.string(),
    GITHUB_OAUTH_CLIENT_ID: z.string(),
    GITHUB_OAUTH_CLIENT_SECRET: z.string(),
    GITHUB_OAUTH_CLIENT_REDIRECT_URI: z.string().url(),
  })
  .parse(process.env)
