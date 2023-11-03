# Data Karyawan API servers

## Getting Started
this project use bun, if u have linux/macOs machine, to install bun paste this command into your terminal:
```bash
curl -fsSL https://bun.sh/install | bash
```
then in this project folder :
```bash
bun i 
```

if your machine have windows just use latest node JS and run :
```bash
npm i 
```


## Prisma setup and migration
this project also use prisma as ORM, to connect and initiate your database adjust .env.example file to suits your database then use :
```bash
bunx prisma db push
```

and for migration :

```bash
bunx prisma db migrate 
```

to see the database use :
```bash
bunx prisma studio 
```


## Development
To start the development server run:
```bash
bun run dev
```

Open http://localhost:3000/ with your browser to see the result.
