import { Elysia, t } from 'elysia'
import { PrismaClient } from '@prisma/client'
import { swagger } from '@elysiajs/swagger'

const db = new PrismaClient()

const app = new Elysia()
  .use(swagger())
  .model({
    'user.sign': t.Object({
      username: t.String(),
      password: t.String({
        minLength: 8
      })
    }),
    'response.sign': t.Object({ 
      id: t.Number(), 
      username: t.String() 
    })
  })
  .post(
    '/sign-up',
    async ({ body }) => db.user.create({
      data: body,
      select: {
        id: true,
        username: true,
      }
    }),
    {
      error({ code }) {

        switch (code) {
          // Prisma P2002: "Unique constraint failed on the {constraint}"  
          case 'VALIDATION':
            return {
              error: 'Username must be unique'
            }
        }
      },
      body: 'user.sign',
      response: 'response.sign'
    }
  )
  .get(
    '/users',
    async () => db.user.findMany()
   
  )
  .listen(3000)

console.log(
  `🦊 Elysia is running at ${app.server?.hostname}:${app.server?.port}`
)