-- CreateTable
CREATE TABLE "usuarios" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" DATETIME NOT NULL
);

-- CreateTable
CREATE TABLE "carros" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "modelo" TEXT NOT NULL,
    "marca" TEXT NOT NULL,
    "ano_fabricacao" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "alugueis" (
    "usuarioId" TEXT NOT NULL,
    "carroId" TEXT NOT NULL,

    PRIMARY KEY ("usuarioId", "carroId"),
    CONSTRAINT "alugueis_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "alugueis_carroId_fkey" FOREIGN KEY ("carroId") REFERENCES "carros" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "usuarios_email_key" ON "usuarios"("email");
